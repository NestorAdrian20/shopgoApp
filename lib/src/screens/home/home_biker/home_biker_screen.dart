import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopgo/config/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';

import '../../../services/firebase/firestore/firestore_service.dart';

@RoutePage()
class HomeBikerScreen extends StatefulWidget {
  const HomeBikerScreen({
    super.key,
  });

  @override
  State<HomeBikerScreen> createState() => _HomeBikerScreenState();
}

class _HomeBikerScreenState extends State<HomeBikerScreen> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shopgo'),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            tooltip: 'Profile',
            onPressed: () async {
              await AutoRouter.of(context).push(const ProfileRoute());
            },
          ),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.moped_sharp),
              ),
              Tab(
                icon: Icon(Icons.pending_actions),
              ),
              Tab(
                icon: Icon(Icons.task_alt),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: servicesListPendiente(),
            ),
            Center(
              child: servicesListEnProceso(),
            ),
            Center(
              child: servicesListFinalizados(),
            ),
          ],
        ),
      ),
    );
    
  }
  
 /// ************************************************************************//
 /// Servicios finalizados

  FutureBuilder<List<dynamic>> servicesListFinalizados() {
    String idUser = (FirebaseAuth.instance.currentUser?.uid).toString();

    return FutureBuilder(
        future: getServicesUser(idUser),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) async {
                    snapshot.data?.removeAt(index);
                  },
                  confirmDismiss: (direction) async {
                    bool result = false;
                    result = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                '¿Estas seguro de querer eliminar a ${snapshot.data?[index]["category"]}?'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, false);
                                  },
                                  child: const Text(
                                    'Cancelar',
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, true);
                                  },
                                  child: const Text('Si, estoy seguro'))
                            ],
                          );
                        });
                    return result;
                  },
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete),
                  ),
                  direction: DismissDirection.startToEnd,
                  key: Key(snapshot.data?[index]['uid']),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //if (snapshot.data?[index]['idBiker'] == "tOpFlvKyXed9Fe56ljx0REz5gY92") ...[
                        if (snapshot.data?[index]['state'] == "Finalizado" ) ...[
                          ListTile(
                            leading: IconButton(
                                onPressed: () {
                                  AutoRouter.of(context)
                                      .push(const OrderTrackingRoute());
                                },
                                icon: const Icon(Icons.location_on)),
                            title:
                                Text('${snapshot.data?[index]['category']}:'),
                            subtitle: Text(
                                'Estado : ${snapshot.data?[index]['state']} \n Tipo: ${snapshot.data?[index]['type']} \n Descripción: ${snapshot.data?[index]['descripction']} \n Dirección de recibo: ${snapshot.data?[index]['addressReceive']} \n Dirección de entrega: ${snapshot.data?[index]['addressDeliver']}'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              //******************* */
                              if (snapshot.data?[index]['state'] ==
                                  "Pendiente") ...[
                                TextButton(
                                  child: const Text('Realizar'),
                                  onPressed: () {
                                    String uid = (snapshot.data?[index]['uid'])
                                        .toString();
                                    _showMyDialogConfirmFinalizado(uid);
                                  },
                                ),
                              ] else ...[
                                const Icon(
                                  Icons.check_box,
                                  size: 40,
                                  color: Colors.black,
                                )
                              ],
                              //******************************** */
                              const SizedBox(width: 8),
                            ],
                          ),
                        ] else
                          ...[],
                        //] else...[],
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<void> _showMyDialogConfirmFinalizado(String uid) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Importante'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Al aceptar el servicio, daras acceso a tu ubicación mientras el pedido este en proceso.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                String idBiker =
                    (FirebaseAuth.instance.currentUser?.uid).toString();
                updateServicios(uid, idBiker);

                setState(() {});
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

 /// ************************************************************************//
 /// Servicios en proceso
  FutureBuilder<List<dynamic>> servicesListEnProceso() {
    String idUser = (FirebaseAuth.instance.currentUser?.uid).toString();

    return FutureBuilder(
        future: getServicesUser(idUser),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) async {
                    //await deletePeople(snapshot.data?[index]['uid']);
                    snapshot.data?.removeAt(index);
                  },
                  confirmDismiss: (direction) async {
                    bool result = false;
                    result = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                '¿Estas seguro de querer eliminar a ${snapshot.data?[index]["category"]}?'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, false);
                                  },
                                  child: const Text(
                                    'Cancelar',
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, true);
                                  },
                                  child: const Text('Si, estoy seguro'))
                            ],
                          );
                        });
                    return result;
                  },
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete),
                  ),
                  direction: DismissDirection.startToEnd,
                  key: Key(snapshot.data?[index]['uid']),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //if (snapshot.data?[index]['idBiker'] == "tOpFlvKyXed9Fe56ljx0REz5gY92") ...[
                        if (snapshot.data?[index]['state'] == "En proceso" ) ...[
                          ListTile(
                            leading: IconButton(
                                onPressed: () {
                                  AutoRouter.of(context)
                                      .push(const OrderTrackingRoute());
                                },
                                icon: const Icon(Icons.location_on)),
                            title:
                                Text('${snapshot.data?[index]['category']}:'),
                            subtitle: Text(
                                'Estado : ${snapshot.data?[index]['state']} \n Tipo: ${snapshot.data?[index]['type']} \n Descripción: ${snapshot.data?[index]['descripction']} \n Dirección de recibo: ${snapshot.data?[index]['addressReceive']} \n Dirección de entrega: ${snapshot.data?[index]['addressDeliver']}'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              //******************* */
                              if (snapshot.data?[index]['state'] ==
                                  "Pendiente") ...[
                                TextButton(
                                  child: const Text('Realizar'),
                                  onPressed: () {
                                    String uid = (snapshot.data?[index]['uid'])
                                        .toString();
                                    _showMyDialogConfirmEnProceso(uid);
                                  },
                                ),
                              ] else ...[
                                const Icon(
                                  Icons.pending_outlined,
                                  size: 40,
                                  color: Colors.black,
                                )
                              ],
                              //******************************** */
                              const SizedBox(width: 8),
                            ],
                          ),
                        ] else
                          ...[],
                        //] else...[],
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<void> _showMyDialogConfirmEnProceso(String uid) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Importante'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Al aceptar el servicio, daras acceso a tu ubicación mientras el pedido este en proceso.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                String idBiker =
                    (FirebaseAuth.instance.currentUser?.uid).toString();
                updateServicios(uid, idBiker);

                setState(() {});
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }



 /// ************************************************************************//
 /// Servicios pendientes
 
  FutureBuilder<List<dynamic>> servicesListPendiente() {
    return FutureBuilder(
        future: getServices(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  onDismissed: (direction) async {
                    //await deletePeople(snapshot.data?[index]['uid']);
                    snapshot.data?.removeAt(index);
                  },
                  confirmDismiss: (direction) async {
                    bool result = false;
                    result = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(
                                '¿Estas seguro de querer eliminar a ${snapshot.data?[index]["category"]}?'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, false);
                                  },
                                  child: const Text(
                                    'Cancelar',
                                    style: TextStyle(color: Colors.red),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, true);
                                  },
                                  child: const Text('Si, estoy seguro'))
                            ],
                          );
                        });
                    return result;
                  },
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete),
                  ),
                  direction: DismissDirection.startToEnd,
                  key: Key(snapshot.data?[index]['uid']),
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        if (snapshot.data?[index]['state'] == "Pendiente") ...[
                          ListTile(
                            leading: const Icon(Icons.album),
                            title:
                                Text('${snapshot.data?[index]['category']}:'),
                            subtitle: Text(
                                'Estado : ${snapshot.data?[index]['state']} \n Tipo: ${snapshot.data?[index]['type']} \n Descripción: ${snapshot.data?[index]['descripction']} \n Dirección de recibo: ${snapshot.data?[index]['addressReceive']} \n Dirección de entrega: ${snapshot.data?[index]['addressDeliver']}'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              //******************* */
                              if (snapshot.data?[index]['state'] ==
                                  "Pendiente") ...[
                                TextButton(
                                  child: const Text('Realizar'),
                                  onPressed: () {
                                    String uid = (snapshot.data?[index]['uid'])
                                        .toString();
                                    _showMyDialogConfirmPendiente(uid);
                                  },
                                ),
                              ] else ...[
                                const Icon(
                                  Icons.moped_sharp,
                                  size: 40,
                                  color: Colors.black,
                                )
                              ],
                              //******************************** */
                              const SizedBox(width: 8),
                            ],
                          ),
                        ] else
                          ...[],
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
        

        /// ***************** ///
}



Future<void> _showMyDialogConfirmPendiente(String uid) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Importante'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Al aceptar el servicio, daras acceso a tu ubicación mientras el pedido este en proceso.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Aceptar'),
              onPressed: () {
                String idBiker =
                    (FirebaseAuth.instance.currentUser?.uid).toString();
                updateServicios(uid, idBiker);

                setState(() {});
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
