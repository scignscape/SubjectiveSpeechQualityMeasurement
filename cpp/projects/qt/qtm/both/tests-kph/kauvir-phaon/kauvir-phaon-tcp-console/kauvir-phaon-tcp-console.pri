
#           Copyright Nathaniel Christen 2018.
#  Distributed under the Boost Software License, Version 1.0.
#     (See accompanying file LICENSE_1_0.txt or copy at
#           http://www.boost.org/LICENSE_1_0.txt)

PROJECT_NAME = kauvir-phaon-tcp-console

include(../build-group.pri)

QT += network

#

TEMPLATE = app

DEFINES += DEFAULT_KPF_FOLDER=\\\"$$CPP_ROOT_DIR/kph\\\"


INCLUDEPATH += $$SRC_DIR $$SRC_GROUP_DIR

INCLUDEPATH += $$KAUVIR_KCM_SRC_GROUP_DIR
INCLUDEPATH += $$QHYP_SRC_GROUP_DIR
INCLUDEPATH += $$KAUVIR_PHAON_SRC_GROUP_DIR
INCLUDEPATH += $$KCM_RUNTIME_EVAL_SRC_GROUP_DIR
INCLUDEPATH += $$KAUVIR_RUNTIME_SRC_GROUP_DIR


CONFIG += no_keywords


DEFINES += USE_KANS


INCLUDEPATH += $$SRC_ROOT_DIR/phaon/phaon


INCLUDEPATH += $$KAUVIR_KCM_SRC_GROUP_DIR \
  $$KAUVIR_KCM_SRC_GROUP_DIR/kauvir-type-system \
  $$KAUVIR_KCM_SRC_GROUP_DIR/kauvir-code-model


SOURCES += \
  $$SRC_DIR/main.cpp \



LIBS += -L$$TARGETSDIR -lPhaonLib -lkauvir-code-model -lkauvir-type-system \
   -lkcm-command-package -lkcm-direct-eval -lkcm-scopes -lkauvir-phaon


message(choice: $$CPP_ROOT_DIR/targets/$$CHOICE_CODE/$$PROJECT_SET--$$PROJECT_GROUP--$$PROJECT_NAME)
mkpath($$CPP_ROOT_DIR/targets/$$CHOICE_CODE/$$PROJECT_SET--$$PROJECT_GROUP--$$PROJECT_NAME)