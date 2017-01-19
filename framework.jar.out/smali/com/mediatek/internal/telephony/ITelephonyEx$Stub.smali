.class public abstract Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;
.super Landroid/os/Binder;
.source "ITelephonyEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/ITelephonyEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ITelephonyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.internal.telephony.ITelephonyEx"

.field static final TRANSACTION_broadcastIccUnlockIntent:I = 0x19

.field static final TRANSACTION_btSimapApduRequest:I = 0x12

.field static final TRANSACTION_btSimapConnectSIM:I = 0x10

.field static final TRANSACTION_btSimapDisconnectSIM:I = 0x11

.field static final TRANSACTION_btSimapPowerOffSIM:I = 0x15

.field static final TRANSACTION_btSimapPowerOnSIM:I = 0x14

.field static final TRANSACTION_btSimapResetSIM:I = 0x13

.field static final TRANSACTION_configSimSwap:I = 0x1d

.field static final TRANSACTION_finalizeService:I = 0x38

.field static final TRANSACTION_getAdnStorageInfo_35:I = 0x24

.field static final TRANSACTION_getCapSwitchManualList:I = 0x20

.field static final TRANSACTION_getIccCardType:I = 0x6

.field static final TRANSACTION_getLastDataConnectionFailCause:I = 0x29

.field static final TRANSACTION_getLinkProperties:I = 0x2a

.field static final TRANSACTION_getLocatedPlmn:I = 0x21

.field static final TRANSACTION_getLteAccessStratumState:I = 0x3c

.field static final TRANSACTION_getMainCapabilityPhoneId:I = 0x35

.field static final TRANSACTION_getMvnoMatchType:I = 0xa

.field static final TRANSACTION_getMvnoPattern:I = 0xb

.field static final TRANSACTION_getNetworkHideState:I = 0x22

.field static final TRANSACTION_getNetworkOperatorGemini:I = 0xe

.field static final TRANSACTION_getNetworkOperatorNameGemini:I = 0xc

.field static final TRANSACTION_getNetworkOperatorNameUsingSub:I = 0xd

.field static final TRANSACTION_getNetworkOperatorUsingSub:I = 0xf

.field static final TRANSACTION_getPhoneCapability:I = 0x1b

.field static final TRANSACTION_getScAddressUsingSubId:I = 0x26

.field static final TRANSACTION_getServiceState:I = 0x23

.field static final TRANSACTION_getSubscriberIdForLteDcPhone:I = 0x33

.field static final TRANSACTION_getSvlteCardType:I = 0x7

.field static final TRANSACTION_getSvlteImei:I = 0x34

.field static final TRANSACTION_getSvlteMeid:I = 0x3e

.field static final TRANSACTION_getSvlteServiceState:I = 0x2f

.field static final TRANSACTION_initializeService:I = 0x37

.field static final TRANSACTION_isAirplanemodeAvailableNow:I = 0x28

.field static final TRANSACTION_isAllowAirplaneModeChange:I = 0x36

.field static final TRANSACTION_isAppTypeSupported:I = 0x8

.field static final TRANSACTION_isCapSwitchManualEnabled:I = 0x1f

.field static final TRANSACTION_isCapabilitySwitching:I = 0x2c

.field static final TRANSACTION_isFdnEnabled:I = 0x5

.field static final TRANSACTION_isInHomeNetwork:I = 0x39

.field static final TRANSACTION_isPhbReady:I = 0x25

.field static final TRANSACTION_isRadioOffBySimManagement_25:I = 0x1a

.field static final TRANSACTION_isSharedDefaultApn:I = 0x3d

.field static final TRANSACTION_isSimSwapped:I = 0x1e

.field static final TRANSACTION_isTestIccCard:I = 0x9

.field static final TRANSACTION_queryNetworkLock_0:I = 0x1

.field static final TRANSACTION_repollIccStateForNetworkLock:I = 0x3

.field static final TRANSACTION_setLine1Number:I = 0x4

.field static final TRANSACTION_setLteAccessStratumReport:I = 0x3a

.field static final TRANSACTION_setLteUplinkDataTransfer:I = 0x3b

.field static final TRANSACTION_setPhoneCapability:I = 0x1c

.field static final TRANSACTION_setRadioCapability:I = 0x2b

.field static final TRANSACTION_setRadioTechnology:I = 0x31

.field static final TRANSACTION_setScAddressUsingSubId:I = 0x27

.field static final TRANSACTION_setSvlteRatMode:I = 0x2e

.field static final TRANSACTION_setTrmForPhone:I = 0x32

.field static final TRANSACTION_simAkaAuthentication:I = 0x16

.field static final TRANSACTION_simGbaAuthBootStrapMode:I = 0x17

.field static final TRANSACTION_simGbaAuthNafMode:I = 0x18

.field static final TRANSACTION_supplyNetworkDepersonalization:I = 0x2

.field static final TRANSACTION_switchRadioTechnology:I = 0x30

.field static final TRANSACTION_switchSvlteRatMode:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.mediatek.internal.telephony.ITelephonyEx"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/mediatek/internal/telephony/ITelephonyEx;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 758
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v25

    return v25

    .line 49
    :sswitch_0
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/16 v25, 0x1

    return v25

    .line 54
    :sswitch_1
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 59
    .local v8, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->queryNetworkLock(II)Landroid/os/Bundle;

    move-result-object v19

    .line 60
    .local v19, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v19, :cond_0

    .line 62
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_0
    const/16 v25, 0x1

    return v25

    .line 66
    :cond_0
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)I

    move-result v17

    .line 78
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    const/16 v25, 0x1

    return v25

    .line 84
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v17    # "_result":I
    :sswitch_3
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 88
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1

    const/4 v11, 0x1

    .line 89
    .local v11, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->repollIccStateForNetworkLock(IZ)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/16 v25, 0x1

    return v25

    .line 88
    .end local v11    # "_arg1":Z
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "_arg1":Z
    goto :goto_1

    .line 95
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 101
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v14}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLine1Number(ILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 103
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/16 v25, 0x1

    return v25

    .line 109
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":I
    :sswitch_5
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isFdnEnabled(I)Z

    move-result v21

    .line 113
    .local v21, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v21, :cond_2

    const/16 v25, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v25, 0x1

    return v25

    .line 114
    :cond_2
    const/16 v25, 0x0

    goto :goto_2

    .line 119
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_6
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getIccCardType(I)Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    const/16 v25, 0x1

    return v25

    .line 129
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteCardType(I)I

    move-result v17

    .line 133
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/16 v25, 0x1

    return v25

    .line 139
    .end local v3    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_8
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAppTypeSupported(II)Z

    move-result v21

    .line 145
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v21, :cond_3

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v25, 0x1

    return v25

    .line 146
    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    .line 151
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v21    # "_result":Z
    :sswitch_9
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isTestIccCard(I)Z

    move-result v21

    .line 155
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v21, :cond_4

    const/16 v25, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/16 v25, 0x1

    return v25

    .line 156
    :cond_4
    const/16 v25, 0x0

    goto :goto_4

    .line 161
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_a
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v20

    .line 165
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    const/16 v25, 0x1

    return v25

    .line 171
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 175
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 176
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMvnoPattern(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 177
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    const/16 v25, 0x1

    return v25

    .line 183
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 186
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameGemini(I)Ljava/lang/String;

    move-result-object v20

    .line 187
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    const/16 v25, 0x1

    return v25

    .line 193
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorNameUsingSub(I)Ljava/lang/String;

    move-result-object v20

    .line 197
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    const/16 v25, 0x1

    return v25

    .line 203
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorGemini(I)Ljava/lang/String;

    move-result-object v20

    .line 207
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    const/16 v25, 0x1

    return v25

    .line 213
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkOperatorUsingSub(I)Ljava/lang/String;

    move-result-object v20

    .line 217
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    const/16 v25, 0x1

    return v25

    .line 223
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .restart local v3    # "_arg0":I
    new-instance v9, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 228
    .local v9, "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapConnectSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v17

    .line 229
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    if-eqz v9, :cond_5

    .line 232
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 238
    :goto_5
    const/16 v25, 0x1

    return v25

    .line 236
    :cond_5
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 242
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v17    # "_result":I
    :sswitch_11
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapDisconnectSIM()I

    move-result v17

    .line 244
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/16 v25, 0x1

    return v25

    .line 250
    .end local v17    # "_result":I
    :sswitch_12
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 256
    .restart local v10    # "_arg1":Ljava/lang/String;
    new-instance v13, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v13}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 257
    .local v13, "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v13}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapApduRequest(ILjava/lang/String;Lcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v17

    .line 258
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    if-eqz v13, :cond_6

    .line 261
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 267
    :goto_6
    const/16 v25, 0x1

    return v25

    .line 265
    :cond_6
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 271
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v13    # "_arg2":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v17    # "_result":I
    :sswitch_13
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    .restart local v3    # "_arg0":I
    new-instance v9, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 276
    .restart local v9    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapResetSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v17

    .line 277
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    if-eqz v9, :cond_7

    .line 280
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 286
    :goto_7
    const/16 v25, 0x1

    return v25

    .line 284
    :cond_7
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 290
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v17    # "_result":I
    :sswitch_14
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .restart local v3    # "_arg0":I
    new-instance v9, Lcom/mediatek/internal/telephony/BtSimapOperResponse;

    invoke-direct {v9}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;-><init>()V

    .line 295
    .restart local v9    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOnSIM(ILcom/mediatek/internal/telephony/BtSimapOperResponse;)I

    move-result v17

    .line 296
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    if-eqz v9, :cond_8

    .line 299
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Lcom/mediatek/internal/telephony/BtSimapOperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 305
    :goto_8
    const/16 v25, 0x1

    return v25

    .line 303
    :cond_8
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 309
    .end local v3    # "_arg0":I
    .end local v9    # "_arg1":Lcom/mediatek/internal/telephony/BtSimapOperResponse;
    .end local v17    # "_result":I
    :sswitch_15
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->btSimapPowerOffSIM()I

    move-result v17

    .line 311
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/16 v25, 0x1

    return v25

    .line 317
    .end local v17    # "_result":I
    :sswitch_16
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 321
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 323
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 325
    .local v15, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 326
    .local v16, "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v8, v15, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simAkaAuthentication(II[B[B)[B

    move-result-object v22

    .line 327
    .local v22, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 329
    const/16 v25, 0x1

    return v25

    .line 333
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":[B
    .end local v16    # "_arg3":[B
    .end local v22    # "_result":[B
    :sswitch_17
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 339
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 341
    .restart local v15    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 342
    .restart local v16    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v8, v15, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthBootStrapMode(II[B[B)[B

    move-result-object v22

    .line 343
    .restart local v22    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 345
    const/16 v25, 0x1

    return v25

    .line 349
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":[B
    .end local v16    # "_arg3":[B
    .end local v22    # "_result":[B
    :sswitch_18
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 355
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 357
    .restart local v15    # "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 358
    .restart local v16    # "_arg3":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v8, v15, v1}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->simGbaAuthNafMode(II[B[B)[B

    move-result-object v22

    .line 359
    .restart local v22    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 361
    const/16 v25, 0x1

    return v25

    .line 365
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v15    # "_arg2":[B
    .end local v16    # "_arg3":[B
    .end local v22    # "_result":[B
    :sswitch_19
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->broadcastIccUnlockIntent(I)Z

    move-result v21

    .line 369
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v21, :cond_9

    const/16 v25, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/16 v25, 0x1

    return v25

    .line 370
    :cond_9
    const/16 v25, 0x0

    goto :goto_9

    .line 375
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_1a
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isRadioOffBySimManagement(I)Z

    move-result v21

    .line 379
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v21, :cond_a

    const/16 v25, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/16 v25, 0x1

    return v25

    .line 380
    :cond_a
    const/16 v25, 0x0

    goto :goto_a

    .line 385
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_1b
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getPhoneCapability(I)I

    move-result v17

    .line 389
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/16 v25, 0x1

    return v25

    .line 395
    .end local v3    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_1c
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 399
    .local v6, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    .line 400
    .local v12, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setPhoneCapability([I[I)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/16 v25, 0x1

    return v25

    .line 406
    .end local v6    # "_arg0":[I
    .end local v12    # "_arg1":[I
    :sswitch_1d
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_b

    const/4 v5, 0x1

    .line 409
    .local v5, "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->configSimSwap(Z)Z

    move-result v21

    .line 410
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v21, :cond_c

    const/16 v25, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/16 v25, 0x1

    return v25

    .line 408
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_b

    .line 411
    .restart local v21    # "_result":Z
    :cond_c
    const/16 v25, 0x0

    goto :goto_c

    .line 416
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_1e
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSimSwapped()Z

    move-result v21

    .line 418
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v21, :cond_d

    const/16 v25, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/16 v25, 0x1

    return v25

    .line 419
    :cond_d
    const/16 v25, 0x0

    goto :goto_d

    .line 424
    .end local v21    # "_result":Z
    :sswitch_1f
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapSwitchManualEnabled()Z

    move-result v21

    .line 426
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    if-eqz v21, :cond_e

    const/16 v25, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/16 v25, 0x1

    return v25

    .line 427
    :cond_e
    const/16 v25, 0x0

    goto :goto_e

    .line 432
    .end local v21    # "_result":Z
    :sswitch_20
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getCapSwitchManualList()[Ljava/lang/String;

    move-result-object v24

    .line 434
    .local v24, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 436
    const/16 v25, 0x1

    return v25

    .line 440
    .end local v24    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 443
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLocatedPlmn(I)Ljava/lang/String;

    move-result-object v20

    .line 444
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    const/16 v25, 0x1

    return v25

    .line 450
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 453
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getNetworkHideState(I)I

    move-result v17

    .line 454
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    const/16 v25, 0x1

    return v25

    .line 460
    .end local v3    # "_arg0":I
    .end local v17    # "_result":I
    :sswitch_23
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v19

    .line 464
    .restart local v19    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v19, :cond_f

    .line 466
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 472
    :goto_f
    const/16 v25, 0x1

    return v25

    .line 470
    :cond_f
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 476
    .end local v3    # "_arg0":I
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_24
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 479
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getAdnStorageInfo(I)[I

    move-result-object v23

    .line 480
    .local v23, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 482
    const/16 v25, 0x1

    return v25

    .line 486
    .end local v3    # "_arg0":I
    .end local v23    # "_result":[I
    :sswitch_25
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isPhbReady(I)Z

    move-result v21

    .line 490
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    if-eqz v21, :cond_10

    const/16 v25, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    const/16 v25, 0x1

    return v25

    .line 491
    :cond_10
    const/16 v25, 0x0

    goto :goto_10

    .line 496
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_26
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getScAddressUsingSubId(I)Landroid/os/Bundle;

    move-result-object v19

    .line 500
    .restart local v19    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v19, :cond_11

    .line 502
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 508
    :goto_11
    const/16 v25, 0x1

    return v25

    .line 506
    :cond_11
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 512
    .end local v3    # "_arg0":I
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_27
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 516
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 517
    .restart local v10    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setScAddressUsingSubId(ILjava/lang/String;)Z

    move-result v21

    .line 518
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v21, :cond_12

    const/16 v25, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/16 v25, 0x1

    return v25

    .line 519
    :cond_12
    const/16 v25, 0x0

    goto :goto_12

    .line 524
    .end local v3    # "_arg0":I
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v21    # "_result":Z
    :sswitch_28
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAirplanemodeAvailableNow()Z

    move-result v21

    .line 526
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v21, :cond_13

    const/16 v25, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/16 v25, 0x1

    return v25

    .line 527
    :cond_13
    const/16 v25, 0x0

    goto :goto_13

    .line 532
    .end local v21    # "_result":Z
    :sswitch_29
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 537
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLastDataConnectionFailCause(Ljava/lang/String;I)I

    move-result v17

    .line 538
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/16 v25, 0x1

    return v25

    .line 544
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v17    # "_result":I
    :sswitch_2a
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 548
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 549
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLinkProperties(Ljava/lang/String;I)Landroid/net/LinkProperties;

    move-result-object v18

    .line 550
    .local v18, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    if-eqz v18, :cond_14

    .line 552
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    const/16 v25, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 558
    :goto_14
    const/16 v25, 0x1

    return v25

    .line 556
    :cond_14
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 562
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":I
    .end local v18    # "_result":Landroid/net/LinkProperties;
    :sswitch_2b
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    sget-object v25, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/RadioAccessFamily;

    .line 565
    .local v7, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v21

    .line 566
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v21, :cond_15

    const/16 v25, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/16 v25, 0x1

    return v25

    .line 567
    :cond_15
    const/16 v25, 0x0

    goto :goto_15

    .line 572
    .end local v7    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    .end local v21    # "_result":Z
    :sswitch_2c
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isCapabilitySwitching()Z

    move-result v21

    .line 574
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    if-eqz v21, :cond_16

    const/16 v25, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/16 v25, 0x1

    return v25

    .line 575
    :cond_16
    const/16 v25, 0x0

    goto :goto_16

    .line 580
    .end local v21    # "_result":Z
    :sswitch_2d
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 583
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->switchSvlteRatMode(I)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/16 v25, 0x1

    return v25

    .line 589
    .end local v3    # "_arg0":I
    :sswitch_2e
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 593
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 594
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setSvlteRatMode(II)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/16 v25, 0x1

    return v25

    .line 600
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_2f
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 603
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteServiceState(I)Landroid/os/Bundle;

    move-result-object v19

    .line 604
    .restart local v19    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    if-eqz v19, :cond_17

    .line 606
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 612
    :goto_17
    const/16 v25, 0x1

    return v25

    .line 610
    :cond_17
    const/16 v25, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 616
    .end local v3    # "_arg0":I
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_30
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 619
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->switchRadioTechnology(I)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/16 v25, 0x1

    return v25

    .line 625
    .end local v3    # "_arg0":I
    :sswitch_31
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 629
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 630
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setRadioTechnology(II)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/16 v25, 0x1

    return v25

    .line 636
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_32
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 640
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 641
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setTrmForPhone(II)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    const/16 v25, 0x1

    return v25

    .line 647
    .end local v3    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_33
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 650
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSubscriberIdForLteDcPhone(I)Ljava/lang/String;

    move-result-object v20

    .line 651
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    const/16 v25, 0x1

    return v25

    .line 657
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 660
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteImei(I)Ljava/lang/String;

    move-result-object v20

    .line 661
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    const/16 v25, 0x1

    return v25

    .line 667
    .end local v3    # "_arg0":I
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getMainCapabilityPhoneId()I

    move-result v17

    .line 669
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/16 v25, 0x1

    return v25

    .line 675
    .end local v17    # "_result":I
    :sswitch_36
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isAllowAirplaneModeChange()Z

    move-result v21

    .line 677
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    if-eqz v21, :cond_18

    const/16 v25, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/16 v25, 0x1

    return v25

    .line 678
    :cond_18
    const/16 v25, 0x0

    goto :goto_18

    .line 683
    .end local v21    # "_result":Z
    :sswitch_37
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->initializeService(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/16 v25, 0x1

    return v25

    .line 692
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 695
    .restart local v4    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->finalizeService(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    const/16 v25, 0x1

    return v25

    .line 701
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 704
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isInHomeNetwork(I)Z

    move-result v21

    .line 705
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    if-eqz v21, :cond_19

    const/16 v25, 0x1

    :goto_19
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    const/16 v25, 0x1

    return v25

    .line 706
    :cond_19
    const/16 v25, 0x0

    goto :goto_19

    .line 711
    .end local v3    # "_arg0":I
    .end local v21    # "_result":Z
    :sswitch_3a
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1a

    const/4 v5, 0x1

    .line 714
    .restart local v5    # "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLteAccessStratumReport(Z)Z

    move-result v21

    .line 715
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v21, :cond_1b

    const/16 v25, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    const/16 v25, 0x1

    return v25

    .line 713
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :cond_1a
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_1a

    .line 716
    .restart local v21    # "_result":Z
    :cond_1b
    const/16 v25, 0x0

    goto :goto_1b

    .line 721
    .end local v5    # "_arg0":Z
    .end local v21    # "_result":Z
    :sswitch_3b
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1c

    const/4 v5, 0x1

    .line 725
    .restart local v5    # "_arg0":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 726
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->setLteUplinkDataTransfer(ZI)Z

    move-result v21

    .line 727
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    if-eqz v21, :cond_1d

    const/16 v25, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/16 v25, 0x1

    return v25

    .line 723
    .end local v5    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v21    # "_result":Z
    :cond_1c
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Z
    goto :goto_1c

    .line 728
    .restart local v8    # "_arg1":I
    .restart local v21    # "_result":Z
    :cond_1d
    const/16 v25, 0x0

    goto :goto_1d

    .line 733
    .end local v5    # "_arg0":Z
    .end local v8    # "_arg1":I
    .end local v21    # "_result":Z
    :sswitch_3c
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getLteAccessStratumState()Ljava/lang/String;

    move-result-object v20

    .line 735
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    const/16 v25, 0x1

    return v25

    .line 741
    .end local v20    # "_result":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->isSharedDefaultApn()Z

    move-result v21

    .line 743
    .restart local v21    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    if-eqz v21, :cond_1e

    const/16 v25, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    const/16 v25, 0x1

    return v25

    .line 744
    :cond_1e
    const/16 v25, 0x0

    goto :goto_1e

    .line 749
    .end local v21    # "_result":Z
    :sswitch_3e
    const-string/jumbo v25, "com.mediatek.internal.telephony.ITelephonyEx"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 752
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->getSvlteMeid(I)Ljava/lang/String;

    move-result-object v20

    .line 753
    .restart local v20    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    const/16 v25, 0x1

    return v25

    .line 45
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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
