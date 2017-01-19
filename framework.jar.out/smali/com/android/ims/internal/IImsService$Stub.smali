.class public abstract Lcom/android/ims/internal/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/android/ims/internal/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsService"

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_createCallProfile:I = 0x6

.field static final TRANSACTION_createCallSession:I = 0x7

.field static final TRANSACTION_getConfigInterface:I = 0xa

.field static final TRANSACTION_getEcbmInterface:I = 0xd

.field static final TRANSACTION_getImsExtInfo:I = 0x12

.field static final TRANSACTION_getImsRegInfo:I = 0x11

.field static final TRANSACTION_getImsState:I = 0x10

.field static final TRANSACTION_getPendingCallSession:I = 0x8

.field static final TRANSACTION_getRegistrationStatus:I = 0x14

.field static final TRANSACTION_getUtInterface:I = 0x9

.field static final TRANSACTION_hangupAllCall:I = 0x13

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_isOpened:I = 0x4

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_setCallIndication:I = 0xf

.field static final TRANSACTION_setRegistrationListener:I = 0x5

.field static final TRANSACTION_setUiTTYMode:I = 0xe

.field static final TRANSACTION_turnOffIms:I = 0xc

.field static final TRANSACTION_turnOnIms:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.android.ims.internal.IImsService"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/ims/internal/IImsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 285
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    .line 45
    :sswitch_0
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/16 v22, 0x1

    return v22

    .line 50
    :sswitch_1
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_0

    .line 57
    sget-object v22, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .line 63
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v13

    .line 64
    .local v13, "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v9, v13}, Lcom/android/ims/internal/IImsService$Stub;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v14

    .line 65
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/16 v22, 0x1

    return v22

    .line 60
    .end local v13    # "_arg3":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v14    # "_result":I
    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg2":Landroid/app/PendingIntent;
    goto :goto_0

    .line 71
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v9    # "_arg2":Landroid/app/PendingIntent;
    :sswitch_2
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->close(I)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/16 v22, 0x1

    return v22

    .line 80
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 86
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 87
    .local v8, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8}, Lcom/android/ims/internal/IImsService$Stub;->isConnected(III)Z

    move-result v21

    .line 88
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v21, :cond_1

    const/16 v22, 0x1

    :goto_1
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/16 v22, 0x1

    return v22

    .line 89
    :cond_1
    const/16 v22, 0x0

    goto :goto_1

    .line 94
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v21    # "_result":Z
    :sswitch_4
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->isOpened(I)Z

    move-result v21

    .line 98
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v21, :cond_2

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/16 v22, 0x1

    return v22

    .line 99
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 104
    .end local v2    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_5
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 108
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v6

    .line 109
    .local v6, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/ims/internal/IImsService$Stub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/16 v22, 0x1

    return v22

    .line 115
    .end local v2    # "_arg0":I
    .end local v6    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    :sswitch_6
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 122
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v8}, Lcom/android/ims/internal/IImsService$Stub;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;

    move-result-object v15

    .line 123
    .local v15, "_result":Lcom/android/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v15, :cond_3

    .line 125
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    :goto_3
    const/16 v22, 0x1

    return v22

    .line 129
    :cond_3
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 135
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v15    # "_result":Lcom/android/ims/ImsCallProfile;
    :sswitch_7
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 139
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_4

    .line 140
    sget-object v22, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/ImsCallProfile;

    .line 146
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v11

    .line 147
    .local v11, "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v11}, Lcom/android/ims/internal/IImsService$Stub;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v16

    .line 148
    .local v16, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v16, :cond_5

    invoke-interface/range {v16 .. v16}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 150
    const/16 v22, 0x1

    return v22

    .line 143
    .end local v11    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v16    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_4
    const/4 v5, 0x0

    .local v5, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    .line 149
    .end local v5    # "_arg1":Lcom/android/ims/ImsCallProfile;
    .restart local v11    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .restart local v16    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :cond_5
    const/16 v22, 0x0

    goto :goto_5

    .line 154
    .end local v2    # "_arg0":I
    .end local v11    # "_arg2":Lcom/android/ims/internal/IImsCallSessionListener;
    .end local v16    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_8
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/ims/internal/IImsService$Stub;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v16

    .line 160
    .restart local v16    # "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_6
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 162
    const/16 v22, 0x1

    return v22

    .line 161
    :cond_6
    const/16 v22, 0x0

    goto :goto_6

    .line 166
    .end local v2    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_9
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v19

    .line 170
    .local v19, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v19, :cond_7

    invoke-interface/range {v19 .. v19}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_7
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 172
    const/16 v22, 0x1

    return v22

    .line 171
    :cond_7
    const/16 v22, 0x0

    goto :goto_7

    .line 176
    .end local v2    # "_arg0":I
    .end local v19    # "_result":Lcom/android/ims/internal/IImsUt;
    :sswitch_a
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v17

    .line 180
    .local v17, "_result":Lcom/android/ims/internal/IImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v17, :cond_8

    invoke-interface/range {v17 .. v17}, Lcom/android/ims/internal/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_8
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 182
    const/16 v22, 0x1

    return v22

    .line 181
    :cond_8
    const/16 v22, 0x0

    goto :goto_8

    .line 186
    .end local v2    # "_arg0":I
    .end local v17    # "_result":Lcom/android/ims/internal/IImsConfig;
    :sswitch_b
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOnIms(I)V

    .line 190
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/16 v22, 0x1

    return v22

    .line 195
    .end local v2    # "_arg0":I
    :sswitch_c
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 198
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->turnOffIms(I)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/16 v22, 0x1

    return v22

    .line 204
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v18

    .line 208
    .local v18, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_9
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 210
    const/16 v22, 0x1

    return v22

    .line 209
    :cond_9
    const/16 v22, 0x0

    goto :goto_9

    .line 214
    .end local v2    # "_arg0":I
    .end local v18    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :sswitch_e
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 218
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 220
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    .line 221
    sget-object v22, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 226
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v10}, Lcom/android/ims/internal/IImsService$Stub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/16 v22, 0x1

    return v22

    .line 224
    :cond_a
    const/4 v10, 0x0

    .local v10, "_arg2":Landroid/os/Message;
    goto :goto_a

    .line 232
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v10    # "_arg2":Landroid/os/Message;
    :sswitch_f
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 238
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    const/4 v12, 0x1

    .line 239
    .local v12, "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v12}, Lcom/android/ims/internal/IImsService$Stub;->setCallIndication(Ljava/lang/String;IZ)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    const/16 v22, 0x1

    return v22

    .line 238
    .end local v12    # "_arg2":Z
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "_arg2":Z
    goto :goto_b

    .line 245
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v12    # "_arg2":Z
    :sswitch_10
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsService$Stub;->getImsState()I

    move-result v14

    .line 247
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    const/16 v22, 0x1

    return v22

    .line 253
    .end local v14    # "_result":I
    :sswitch_11
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 256
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsService$Stub;->getImsRegInfo(I)Z

    move-result v21

    .line 257
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    if-eqz v21, :cond_c

    const/16 v22, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/16 v22, 0x1

    return v22

    .line 258
    :cond_c
    const/16 v22, 0x0

    goto :goto_c

    .line 263
    .end local v2    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_12
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsService$Stub;->getImsExtInfo()Ljava/lang/String;

    move-result-object v20

    .line 265
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    const/16 v22, 0x1

    return v22

    .line 271
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsService$Stub;->hangupAllCall()V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/16 v22, 0x1

    return v22

    .line 278
    :sswitch_14
    const-string/jumbo v22, "com.android.ims.internal.IImsService"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsService$Stub;->getRegistrationStatus()I

    move-result v14

    .line 280
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/16 v22, 0x1

    return v22

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
