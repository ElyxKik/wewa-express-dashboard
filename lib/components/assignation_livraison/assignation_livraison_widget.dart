import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'assignation_livraison_model.dart';
export 'assignation_livraison_model.dart';

class AssignationLivraisonWidget extends StatefulWidget {
  const AssignationLivraisonWidget({
    super.key,
    required this.detailCommande,
  });

  final DocumentReference? detailCommande;

  @override
  State<AssignationLivraisonWidget> createState() =>
      _AssignationLivraisonWidgetState();
}

class _AssignationLivraisonWidgetState extends State<AssignationLivraisonWidget>
    with TickerProviderStateMixin {
  late AssignationLivraisonModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignationLivraisonModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 250.ms),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 70.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5.0,
        sigmaY: 4.0,
      ),
      child: StreamBuilder<List<UsersRecord>>(
        stream: queryUsersRecord(
          queryBuilder: (usersRecord) => usersRecord.where(
            'role',
            isEqualTo: 'livreur',
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 25.0,
                height: 25.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFEF9539),
                  ),
                ),
              ),
            );
          }
          List<UsersRecord> containerUsersRecordList = snapshot.data!;

          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 670.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            1.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.always,
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 4.0),
                                                  child: Text(
                                                    'Assigner une livraison',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 22.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 60.0,
                                            icon: Icon(
                                              Icons.close_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child:
                                              StreamBuilder<List<UsersRecord>>(
                                            stream: queryUsersRecord(
                                              queryBuilder: (usersRecord) =>
                                                  usersRecord
                                                      .where(
                                                        'role',
                                                        isEqualTo: 'livreur',
                                                      )
                                                      .where(
                                                        'banned',
                                                        isEqualTo: false,
                                                      )
                                                      .orderBy('display_name'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 25.0,
                                                    height: 25.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        Color(0xFFEF9539),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<UsersRecord>
                                                  listViewUsersRecordList =
                                                  snapshot.data!;

                                              return ListView.separated(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount:
                                                    listViewUsersRecordList
                                                        .length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(height: 2.0),
                                                itemBuilder:
                                                    (context, listViewIndex) {
                                                  final listViewUsersRecord =
                                                      listViewUsersRecordList[
                                                          listViewIndex];
                                                  return Container(
                                                    width: double.infinity,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: StreamBuilder<
                                                        CommandesRecord>(
                                                      stream: CommandesRecord
                                                          .getDocument(widget
                                                              .detailCommande!),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 25.0,
                                                              height: 25.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  Color(
                                                                      0xFFEF9539),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }

                                                        final rowCommandesRecord =
                                                            snapshot.data!;

                                                        return Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  listViewUsersRecord
                                                                      .displayName,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  listViewUsersRecord
                                                                      .email,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            StreamBuilder<
                                                                UsersRecord>(
                                                              stream: UsersRecord
                                                                  .getDocument(
                                                                      rowCommandesRecord
                                                                          .user!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          25.0,
                                                                      height:
                                                                          25.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          Color(
                                                                              0xFFEF9539),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }

                                                                final iconButtonUsersRecord =
                                                                    snapshot
                                                                        .data!;

                                                                return FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Color(
                                                                          0xFFF38422),
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: Color(
                                                                      0xFFF5B06A),
                                                                  icon: Icon(
                                                                    Icons
                                                                        .arrow_forward_ios_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 20.0,
                                                                  ),
                                                                  showLoadingIndicator:
                                                                      true,
                                                                  onPressed:
                                                                      () async {
                                                                    await widget
                                                                        .detailCommande!
                                                                        .update(
                                                                            createCommandesRecordData(
                                                                      livreur: listViewUsersRecord
                                                                          .reference
                                                                          .id,
                                                                      nomLivreur:
                                                                          listViewUsersRecord
                                                                              .displayName,
                                                                      actif:
                                                                          true,
                                                                    ));
                                                                    await SendEmailCall
                                                                        .call(
                                                                      to: iconButtonUsersRecord
                                                                          .email,
                                                                      subject:
                                                                          'Livreur en route',
                                                                      message:
                                                                          'Bonjour ${iconButtonUsersRecord.displayName} , un Coursier est en route pour récupérer votre colis, Votre code de récupération est : ${rowCommandesRecord.code}. Suivez sa progression dans la carte intégrée de l’application wewaexpress',
                                                                    );

                                                                    await actions
                                                                        .sendSMS2(
                                                                      iconButtonUsersRecord
                                                                          .phoneNumber,
                                                                      'AC387688f54d18dfa8797a609cea6d63ef',
                                                                      'dff99e1e4bfa58389d2ac41d8a115311',
                                                                      'WewaExpress',
                                                                      'Bonjour ${iconButtonUsersRecord.displayName} , un Coursier est en route pour récupérer votre colis, Votre code de récupération est : ${rowCommandesRecord.code}. Suivez sa progression dans la carte intégrée de l’application wewaexpress',
                                                                    );
                                                                    await SendEmailToCall
                                                                        .call(
                                                                      to: listViewUsersRecord
                                                                          .email,
                                                                      subject:
                                                                          'Course assignée',
                                                                      content:
                                                                          'Une course vous a été assignée par l’administrateur. Veillez-vous connectez pour plus des détails, Merci.',
                                                                    );

                                                                    await NotificationsRecord
                                                                        .collection
                                                                        .doc()
                                                                        .set(
                                                                            createNotificationsRecordData(
                                                                          admin:
                                                                              currentUserReference?.id,
                                                                          livreur: listViewUsersRecord
                                                                              .reference
                                                                              .id,
                                                                          message:
                                                                              'Une course a été assigné à ${listViewUsersRecord.displayName} par ${currentUserDisplayName}',
                                                                        ));
                                                                    triggerPushNotification(
                                                                      notificationTitle:
                                                                          'Nouvelle course',
                                                                      notificationText:
                                                                          'Une nouvelle course vous a été assignée !',
                                                                      userRefs: [
                                                                        listViewUsersRecord
                                                                            .reference
                                                                      ],
                                                                      initialPageName:
                                                                          'homePage',
                                                                      parameterData: {},
                                                                    );
                                                                    Navigator.pop(
                                                                        context);
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Colis assigné à ${listViewUsersRecord.displayName} avec succès !',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation2']!),
                ),
              ],
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!);
        },
      ),
    );
  }
}
