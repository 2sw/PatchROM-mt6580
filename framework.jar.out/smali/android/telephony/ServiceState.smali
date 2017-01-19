.class public Landroid/telephony/ServiceState;
.super Ljava/lang/Object;
.source "ServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ServiceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final REGISTRATION_STATE_HOME_NETWORK:I = 0x1

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING:I = 0x0

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING:I = 0x2

.field public static final REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED:I = 0x3

.field public static final REGISTRATION_STATE_REGISTRATION_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final REGISTRATION_STATE_ROAMING:I = 0x5

.field public static final REGISTRATION_STATE_UNKNOWN:I = 0x4

.field public static final REGISTRATION_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final RIL_CDMA_NETWORK_MODE_1X_EVDO:I = 0x8

.field public static final RIL_CDMA_NETWORK_MODE_1X_ONLY:I = 0x2

.field public static final RIL_CDMA_NETWORK_MODE_EVDO_ONLY:I = 0x4

.field public static final RIL_CDMA_NETWORK_MODE_UNKOWN:I = 0x0

.field public static final RIL_RADIO_TECHNOLOGY_1xRTT:I = 0x6

.field public static final RIL_RADIO_TECHNOLOGY_DC_DPA:I = 0x85

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSDPAP:I = 0x87

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSDPAP_DPA:I = 0x89

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSDPAP_UPA:I = 0x88

.field public static final RIL_RADIO_TECHNOLOGY_DC_HSPAP:I = 0x8a

.field public static final RIL_RADIO_TECHNOLOGY_DC_UPA:I = 0x86

.field public static final RIL_RADIO_TECHNOLOGY_EDGE:I = 0x2

.field public static final RIL_RADIO_TECHNOLOGY_EHRPD:I = 0xd

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_0:I = 0x7

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_A:I = 0x8

.field public static final RIL_RADIO_TECHNOLOGY_EVDO_B:I = 0xc

.field public static final RIL_RADIO_TECHNOLOGY_GPRS:I = 0x1

.field public static final RIL_RADIO_TECHNOLOGY_GSM:I = 0x10

.field public static final RIL_RADIO_TECHNOLOGY_HSDPA:I = 0x9

.field public static final RIL_RADIO_TECHNOLOGY_HSDPAP:I = 0x81

.field public static final RIL_RADIO_TECHNOLOGY_HSDPAP_UPA:I = 0x82

.field public static final RIL_RADIO_TECHNOLOGY_HSPA:I = 0xb

.field public static final RIL_RADIO_TECHNOLOGY_HSPAP:I = 0xf

.field public static final RIL_RADIO_TECHNOLOGY_HSUPA:I = 0xa

.field public static final RIL_RADIO_TECHNOLOGY_HSUPAP:I = 0x83

.field public static final RIL_RADIO_TECHNOLOGY_HSUPAP_DPA:I = 0x84

.field public static final RIL_RADIO_TECHNOLOGY_IS95A:I = 0x4

.field public static final RIL_RADIO_TECHNOLOGY_IS95B:I = 0x5

.field public static final RIL_RADIO_TECHNOLOGY_IWLAN:I = 0x12

.field public static final RIL_RADIO_TECHNOLOGY_LTE:I = 0xe

.field public static final RIL_RADIO_TECHNOLOGY_LTEA:I = 0x8b

.field public static final RIL_RADIO_TECHNOLOGY_LTE_CA:I = 0x13

.field public static final RIL_RADIO_TECHNOLOGY_MTK:I = 0x80

.field public static final RIL_RADIO_TECHNOLOGY_TD_SCDMA:I = 0x11

.field public static final RIL_RADIO_TECHNOLOGY_UMTS:I = 0x3

.field public static final RIL_RADIO_TECHNOLOGY_UNKNOWN:I = 0x0

.field public static final RIL_REG_STATE_DENIED:I = 0x3

.field public static final RIL_REG_STATE_DENIED_EMERGENCY_CALL_ENABLED:I = 0xd

.field public static final RIL_REG_STATE_HOME:I = 0x1

.field public static final RIL_REG_STATE_NOT_REG:I = 0x0

.field public static final RIL_REG_STATE_NOT_REG_EMERGENCY_CALL_ENABLED:I = 0xa

.field public static final RIL_REG_STATE_ROAMING:I = 0x5

.field public static final RIL_REG_STATE_SEARCHING:I = 0x2

.field public static final RIL_REG_STATE_SEARCHING_EMERGENCY_CALL_ENABLED:I = 0xc

.field public static final RIL_REG_STATE_UNKNOWN:I = 0x4

.field public static final RIL_REG_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED:I = 0xe

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field public static final STATE_EMERGENCY_ONLY:I = 0x2

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field public static final STATE_POWER_OFF:I = 0x3


# instance fields
.field private mCdmaDefaultRoamingIndicator:I

.field private mCdmaEriIconIndex:I

.field private mCdmaEriIconMode:I

.field protected mCdmaNetWorkMode:I

.field private mCdmaRoamingIndicator:I

.field private mCssIndicator:Z

.field private mDataOperatorAlphaLong:Ljava/lang/String;

.field private mDataOperatorAlphaShort:Ljava/lang/String;

.field private mDataOperatorNumeric:Ljava/lang/String;

.field private mDataRegState:I

.field private mDataRejectCause:I

.field private mDataRoamingType:I

.field private mIsDataRoamingFromRegistration:Z

.field private mIsEmergencyOnly:Z

.field private mIsManualNetworkSelection:Z

.field private mNetworkId:I

.field private mProprietaryDataRadioTechnology:I

.field private mRilDataRadioTechnology:I

.field private mRilDataRegState:I

.field private mRilVoiceRadioTechnology:I

.field private mRilVoiceRegState:I

.field private mSystemId:I

.field private mVoiceOperatorAlphaLong:Ljava/lang/String;

.field private mVoiceOperatorAlphaShort:Ljava/lang/String;

.field private mVoiceOperatorNumeric:Ljava/lang/String;

.field private mVoiceRegState:I

.field private mVoiceRejectCause:I

.field private mVoiceRoamingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 460
    new-instance v0, Landroid/telephony/ServiceState$1;

    invoke-direct {v0}, Landroid/telephony/ServiceState$1;-><init>()V

    .line 459
    sput-object v0, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 219
    iput v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 273
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 274
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 278
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 279
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 292
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 219
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 273
    iput v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 274
    iput v2, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 278
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 279
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 292
    iput v2, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 385
    return-void

    :cond_0
    move v0, v2

    .line 396
    goto :goto_0

    :cond_1
    move v0, v2

    .line 399
    goto :goto_1

    :cond_2
    move v0, v2

    .line 406
    goto :goto_2

    :cond_3
    move v1, v2

    .line 417
    goto :goto_3
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 219
    iput v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 273
    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 274
    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 278
    iput v1, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 279
    iput v1, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 292
    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 347
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->copyFrom(Landroid/telephony/ServiceState;)V

    .line 346
    return-void
.end method

.method public static bitmaskHasTech(II)Z
    .locals 3
    .param p0, "bearerBitmask"    # I
    .param p1, "radioTech"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1306
    if-nez p0, :cond_0

    .line 1307
    return v0

    .line 1308
    :cond_0
    if-lt p1, v0, :cond_2

    .line 1309
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v0, v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1311
    :cond_2
    return v1
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1070
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getBitmaskForTech(I)I
    .locals 2
    .param p0, "radioTech"    # I

    .prologue
    const/4 v1, 0x1

    .line 1316
    if-lt p0, v1, :cond_0

    .line 1317
    add-int/lit8 v0, p0, -0x1

    shl-int v0, v1, v0

    return v0

    .line 1319
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBitmaskFromString(Ljava/lang/String;)I
    .locals 9
    .param p0, "bearerList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1324
    const-string/jumbo v5, "\\|"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1325
    .local v3, "bearers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1326
    .local v1, "bearerBitmask":I
    array-length v7, v3

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v3, v5

    .line 1327
    .local v0, "bearer":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1329
    .local v2, "bearerInt":I
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1334
    if-nez v2, :cond_0

    .line 1335
    return v6

    .line 1330
    :catch_0
    move-exception v4

    .line 1331
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    return v6

    .line 1338
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v8

    or-int/2addr v1, v8

    .line 1326
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v2    # "bearerInt":I
    :cond_1
    return v1
.end method

.method public static final getRoamingLogString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roamingType"    # I

    .prologue
    .line 300
    packed-switch p0, :pswitch_data_0

    .line 314
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 302
    :pswitch_0
    const-string/jumbo v0, "home"

    return-object v0

    .line 305
    :pswitch_1
    const-string/jumbo v0, "roaming"

    return-object v0

    .line 308
    :pswitch_2
    const-string/jumbo v0, "Domestic Roaming"

    return-object v0

    .line 311
    :pswitch_3
    const-string/jumbo v0, "International Roaming"

    return-object v0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hasCdma(I)Z
    .locals 2
    .param p0, "radioTechnologyBitmask"    # I

    .prologue
    const/4 v0, 0x0

    .line 1301
    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCdma(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v0, 0x1

    .line 1282
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 1283
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return v0

    .line 1284
    :cond_1
    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    .line 1285
    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    .line 1286
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    .line 1287
    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    .line 1288
    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGsm(I)Z
    .locals 2
    .param p0, "radioTechnology"    # I

    .prologue
    const/4 v0, 0x1

    .line 1265
    if-eq p0, v0, :cond_0

    .line 1266
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1267
    :cond_1
    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 1268
    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    .line 1269
    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    .line 1270
    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    .line 1271
    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    .line 1272
    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    .line 1273
    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    .line 1274
    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    .line 1275
    const/16 v1, 0x12

    if-eq p0, v1, :cond_0

    .line 1276
    const/16 v1, 0x13

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 3
    .param p0, "baseSs"    # Landroid/telephony/ServiceState;
    .param p1, "voiceSs"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x0

    .line 1349
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-eqz v1, :cond_0

    .line 1350
    return-object p0

    .line 1353
    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1356
    .local v0, "newSs":Landroid/telephony/ServiceState;
    iget v1, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v1, v0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1357
    iput-boolean v2, v0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1359
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 330
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 331
    .local v0, "ret":Landroid/telephony/ServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/ServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 332
    return-object v0
.end method

.method private rilRadioTechnologyToNetworkType(I)I
    .locals 1
    .param p1, "rt"    # I

    .prologue
    .line 1186
    packed-switch p1, :pswitch_data_0

    .line 1225
    const/4 v0, 0x0

    return v0

    .line 1188
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1190
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1192
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1194
    :pswitch_3
    const/16 v0, 0x8

    return v0

    .line 1196
    :pswitch_4
    const/16 v0, 0x9

    return v0

    .line 1198
    :pswitch_5
    const/16 v0, 0xa

    return v0

    .line 1201
    :pswitch_6
    const/4 v0, 0x4

    return v0

    .line 1203
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 1205
    :pswitch_8
    const/4 v0, 0x5

    return v0

    .line 1207
    :pswitch_9
    const/4 v0, 0x6

    return v0

    .line 1209
    :pswitch_a
    const/16 v0, 0xc

    return v0

    .line 1211
    :pswitch_b
    const/16 v0, 0xe

    return v0

    .line 1213
    :pswitch_c
    const/16 v0, 0xd

    return v0

    .line 1215
    :pswitch_d
    const/16 v0, 0xf

    return v0

    .line 1217
    :pswitch_e
    const/16 v0, 0x10

    return v0

    .line 1219
    :pswitch_f
    const/16 v0, 0x11

    return v0

    .line 1221
    :pswitch_10
    const/16 v0, 0x12

    return v0

    .line 1223
    :pswitch_11
    const/16 v0, 0x13

    return v0

    .line 1186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static rilRadioTechnologyToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "rt"    # I

    .prologue
    .line 792
    packed-switch p0, :pswitch_data_0

    .line 854
    const-string/jumbo v0, "Unexpected"

    .line 855
    .local v0, "rtString":Ljava/lang/String;
    const-string/jumbo v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected radioTechnology="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :goto_0
    return-object v0

    .line 794
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 797
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "GPRS"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "EDGE"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 803
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "UMTS"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 806
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "CDMA-IS95A"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 809
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "CDMA-IS95B"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "1xRTT"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 815
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "EvDo-rev.0"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 818
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "EvDo-rev.A"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "HSDPA"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 824
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HSUPA"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 827
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "HSPA"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 830
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "EvDo-rev.B"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 833
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "eHRPD"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 836
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "LTE"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 839
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "HSPAP"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 842
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "GSM"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 845
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "TD-SCDMA"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 848
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_12
    const-string/jumbo v0, "IWLAN"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 851
    .end local v0    # "rtString":Ljava/lang/String;
    :pswitch_13
    const-string/jumbo v0, "LTE_CA"

    .restart local v0    # "rtString":Ljava/lang/String;
    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1080
    const-string/jumbo v0, "voiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 1081
    const-string/jumbo v0, "dataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 1082
    const-string/jumbo v0, "voiceRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 1083
    const-string/jumbo v0, "dataRoamingType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 1084
    const-string/jumbo v0, "operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1085
    const-string/jumbo v0, "operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1086
    const-string/jumbo v0, "operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1087
    const-string/jumbo v0, "data-operator-alpha-long"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1088
    const-string/jumbo v0, "data-operator-alpha-short"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1089
    const-string/jumbo v0, "data-operator-numeric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1090
    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1091
    const-string/jumbo v0, "radioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1092
    const-string/jumbo v0, "dataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1093
    const-string/jumbo v0, "cssIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1094
    const-string/jumbo v0, "networkId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1095
    const-string/jumbo v0, "systemId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1096
    const-string/jumbo v0, "cdmaRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 1097
    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 1098
    const-string/jumbo v0, "emergencyOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 1099
    const-string/jumbo v0, "isDataRoamingFromRegistration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 1101
    const-string/jumbo v0, "RilVoiceRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 1102
    const-string/jumbo v0, "RilDataRegState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 1103
    const-string/jumbo v0, "proprietaryDataRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 1104
    const-string/jumbo v0, "VoiceRejectCause"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 1105
    const-string/jumbo v0, "DataRejectCause"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 1106
    const-string/jumbo v0, "cdmaNetWorkMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 1079
    return-void
.end method

.method private setNullState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 898
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ServiceState] setNullState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 900
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 901
    iput v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 902
    iput v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 903
    iput-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 904
    iput-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 905
    iput-object v5, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 906
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 907
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 908
    iput-object v5, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 909
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 910
    iput v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 911
    iput v3, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 912
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 913
    iput v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 914
    iput v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 915
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 916
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 917
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 918
    iput v4, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 919
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 920
    iput-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 922
    iput v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 923
    iput v3, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 924
    iput v3, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 925
    iput v4, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 926
    iput v4, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 897
    return-void
.end method


# virtual methods
.method public compareTwoRadioTechnology(II)Z
    .locals 5
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .prologue
    const/16 v4, 0x13

    const/16 v3, 0x10

    const/16 v2, 0xe

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1474
    if-ne p1, p2, :cond_0

    .line 1475
    return v0

    .line 1476
    :cond_0
    if-ne p1, v2, :cond_1

    .line 1477
    return v1

    .line 1478
    :cond_1
    if-ne p2, v2, :cond_2

    .line 1479
    return v0

    .line 1482
    :cond_2
    if-ne p1, v4, :cond_3

    .line 1483
    return v1

    .line 1484
    :cond_3
    if-ne p2, v4, :cond_4

    .line 1485
    return v0

    .line 1487
    :cond_4
    if-ne p1, v3, :cond_6

    .line 1489
    if-nez p2, :cond_5

    .line 1490
    return v1

    .line 1493
    :cond_5
    return v0

    .line 1494
    :cond_6
    if-ne p2, v3, :cond_8

    .line 1496
    if-nez p1, :cond_7

    .line 1497
    return v0

    .line 1500
    :cond_7
    return v1

    .line 1501
    :cond_8
    if-le p1, p2, :cond_9

    .line 1502
    return v1

    .line 1504
    :cond_9
    return v0
.end method

.method protected copyFrom(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 351
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 352
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 353
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 354
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 355
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 356
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 357
    iget-object v0, p1, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 358
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 360
    iget-object v0, p1, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 361
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 362
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 363
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 364
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mCssIndicator:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 365
    iget v0, p1, Landroid/telephony/ServiceState;->mNetworkId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 366
    iget v0, p1, Landroid/telephony/ServiceState;->mSystemId:I

    iput v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 367
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 368
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 369
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 370
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 371
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 372
    iget-boolean v0, p1, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 374
    iget v0, p1, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 375
    iget v0, p1, Landroid/telephony/ServiceState;->mRilDataRegState:I

    iput v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 376
    iget v0, p1, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    iput v0, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 377
    iget v0, p1, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 378
    iget v0, p1, Landroid/telephony/ServiceState;->mDataRejectCause:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 379
    iget v0, p1, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    iput v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 350
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 740
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/ServiceState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .local v2, "s":Landroid/telephony/ServiceState;
    if-nez p1, :cond_0

    .line 746
    return v3

    .line 741
    .end local v2    # "s":Landroid/telephony/ServiceState;
    :catch_0
    move-exception v1

    .line 742
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 749
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/ServiceState;
    :cond_0
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRegState:I

    if-ne v4, v5, :cond_1

    .line 750
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRegState:I

    if-ne v4, v5, :cond_1

    .line 751
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-ne v4, v5, :cond_1

    .line 752
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-ne v4, v5, :cond_1

    .line 753
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-ne v4, v5, :cond_1

    .line 754
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 755
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 756
    iget-object v4, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 757
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 758
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 759
    iget-object v4, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    iget-object v5, v2, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 760
    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 761
    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 762
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 763
    iget v4, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 764
    iget v4, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 765
    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 766
    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 767
    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 766
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 768
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-ne v4, v5, :cond_1

    .line 770
    iget v4, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    if-ne v4, v5, :cond_1

    .line 771
    iget v4, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    iget v5, v2, Landroid/telephony/ServiceState;->mRilDataRegState:I

    if-ne v4, v5, :cond_1

    .line 772
    iget v4, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 773
    iget v5, v2, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 772
    invoke-static {v4, v5}, Landroid/telephony/ServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 749
    if-eqz v4, :cond_1

    .line 774
    iget v4, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    iget v5, v2, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    if-ne v4, v5, :cond_1

    .line 775
    iget v4, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    iget v5, v2, Landroid/telephony/ServiceState;->mDataRejectCause:I

    if-ne v4, v5, :cond_1

    .line 776
    iget v4, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    iget v5, v2, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    if-ne v4, v5, :cond_1

    .line 778
    iget-boolean v4, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    iget-boolean v5, v2, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 749
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1116
    const-string/jumbo v0, "voiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1117
    const-string/jumbo v0, "dataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    const-string/jumbo v0, "voiceRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    const-string/jumbo v0, "dataRoamingType"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    const-string/jumbo v0, "operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    const-string/jumbo v0, "operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v0, "operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string/jumbo v0, "data-operator-alpha-long"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string/jumbo v0, "data-operator-alpha-short"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string/jumbo v0, "data-operator-numeric"

    iget-object v1, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string/jumbo v0, "manual"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1127
    const-string/jumbo v0, "radioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1128
    const-string/jumbo v0, "dataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1129
    const-string/jumbo v0, "cssIndicator"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1130
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1131
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    const-string/jumbo v0, "cdmaRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    const-string/jumbo v0, "cdmaDefaultRoamingIndicator"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1134
    const-string/jumbo v0, "emergencyOnly"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1135
    const-string/jumbo v0, "isDataRoamingFromRegistration"

    iget-boolean v1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1137
    const-string/jumbo v0, "RilVoiceRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1138
    const-string/jumbo v0, "RilDataRegState"

    iget v1, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1139
    const-string/jumbo v0, "proprietaryDataRadioTechnology"

    iget v1, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1140
    const-string/jumbo v0, "VoiceRejectCause"

    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1141
    const-string/jumbo v0, "DataRejectCause"

    iget v1, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1142
    const-string/jumbo v0, "cdmaNetWorkMode"

    iget v1, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1115
    return-void
.end method

.method public getCdmaDefaultRoamingIndicator()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    return v0
.end method

.method public getCdmaNetworkMode()I
    .locals 1

    .prologue
    .line 1516
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    return v0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    return v0
.end method

.method public getCssIndicator()I
    .locals 1

    .prologue
    .line 1250
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getDataOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRegState()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    return v0
.end method

.method public getDataRejectCause()I
    .locals 1

    .prologue
    .line 1381
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    return v0
.end method

.method public getDataRoaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 540
    iget v1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDataRoamingFromRegistration()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    return v0
.end method

.method public getDataRoamingType()I
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    return v0
.end method

.method public getIsManualSelection()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    return v0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1234
    const-string/jumbo v0, "PHONE"

    const-string/jumbo v1, "ServiceState.getNetworkType() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getProprietaryDataRadioTechnology()I
    .locals 1

    .prologue
    .line 1397
    iget v0, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    return v0
.end method

.method public getRadioTechnology()I
    .locals 2

    .prologue
    .line 1181
    const-string/jumbo v0, "PHONE"

    const-string/jumbo v1, "ServiceState.getRadioTechnology() DEPRECATED will be removed *******"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0
.end method

.method public getRegState()I
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getRilDataRadioTechnology()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    return v0
.end method

.method public getRilDataRegState()I
    .locals 1

    .prologue
    .line 1432
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    return v0
.end method

.method public getRilVoiceRadioTechnology()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    return v0
.end method

.method public getRilVoiceRegState()I
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    return v0
.end method

.method public getRoaming()Z
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    return v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceRegState()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    return v0
.end method

.method public getVoiceRejectCause()I
    .locals 1

    .prologue
    .line 1371
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    return v0
.end method

.method public getVoiceRoaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 522
    iget v1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getVoiceRoamingType()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 711
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    mul-int/lit8 v0, v0, 0x1f

    .line 712
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    mul-int/lit8 v3, v3, 0x25

    .line 711
    add-int/2addr v0, v3

    .line 713
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 711
    add-int/2addr v0, v3

    .line 714
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 711
    add-int/2addr v3, v0

    .line 715
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 711
    :goto_0
    add-int/2addr v3, v0

    .line 716
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    .line 711
    :goto_1
    add-int/2addr v3, v0

    .line 717
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    .line 711
    :goto_2
    add-int/2addr v3, v0

    .line 718
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    .line 711
    :goto_3
    add-int/2addr v3, v0

    .line 719
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    .line 711
    :goto_4
    add-int/2addr v3, v0

    .line 720
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    .line 711
    :goto_5
    add-int/2addr v3, v0

    .line 721
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v2

    .line 711
    :goto_6
    add-int/2addr v0, v3

    .line 722
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 711
    add-int/2addr v0, v3

    .line 723
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 711
    add-int/2addr v3, v0

    .line 724
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_7

    move v0, v1

    .line 711
    :goto_7
    add-int/2addr v0, v3

    .line 726
    iget v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 711
    add-int/2addr v0, v3

    .line 727
    iget v3, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 711
    add-int/2addr v0, v3

    .line 728
    iget v3, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 711
    add-int/2addr v0, v3

    .line 729
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 711
    add-int/2addr v0, v3

    .line 730
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 711
    add-int/2addr v0, v3

    .line 732
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v3, :cond_8

    .line 711
    :goto_8
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    .line 715
    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 717
    :cond_2
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 718
    :cond_3
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 719
    :cond_4
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 720
    :cond_5
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 721
    :cond_6
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    move v0, v2

    .line 724
    goto :goto_7

    :cond_8
    move v1, v2

    .line 732
    goto :goto_8
.end method

.method public isDataRadioTechnologyHigher(I)Z
    .locals 1
    .param p1, "nRadioTechnology"    # I

    .prologue
    .line 1467
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->compareTwoRadioTechnology(II)Z

    move-result v0

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    return v0
.end method

.method public isVoiceRadioTechnologyHigher(I)Z
    .locals 1
    .param p1, "nRadioTechnology"    # I

    .prologue
    .line 1460
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/ServiceState;->compareTwoRadioTechnology(II)Z

    move-result v0

    return v0
.end method

.method public setCdmaDefaultRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 997
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 996
    return-void
.end method

.method public setCdmaEriIconIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1004
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    .line 1003
    return-void
.end method

.method public setCdmaEriIconMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1011
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    .line 1010
    return-void
.end method

.method public setCdmaNetworkMode(I)V
    .locals 0
    .param p1, "networkMode"    # I

    .prologue
    .line 1523
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 1522
    return-void
.end method

.method public setCdmaRoamingIndicator(I)V
    .locals 0
    .param p1, "roaming"    # I

    .prologue
    .line 990
    iput p1, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 989
    return-void
.end method

.method public setCssIndicator(I)V
    .locals 1
    .param p1, "css"    # I

    .prologue
    const/4 v0, 0x0

    .line 1158
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    .line 1157
    return-void
.end method

.method public setDataOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1055
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1054
    return-void
.end method

.method public setDataOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1032
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1033
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1034
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1031
    return-void
.end method

.method public setDataRegState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 950
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    .line 951
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ServiceState] setDataRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void
.end method

.method public setDataRejectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 1391
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 1390
    return-void
.end method

.method public setDataRoaming(Z)V
    .locals 1
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 971
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 970
    return-void

    .line 971
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataRoamingFromRegistration(Z)V
    .locals 0
    .param p1, "dataRoaming"    # Z

    .prologue
    .line 551
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 550
    return-void
.end method

.method public setDataRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 976
    iput p1, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 975
    return-void
.end method

.method public setEmergencyOnly(Z)V
    .locals 0
    .param p1, "emergencyOnly"    # Z

    .prologue
    .line 983
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 982
    return-void
.end method

.method public setIsManualSelection(Z)V
    .locals 0
    .param p1, "isManual"    # Z

    .prologue
    .line 1059
    iput-boolean p1, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    .line 1058
    return-void
.end method

.method public setOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1044
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1045
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1043
    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1015
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1016
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1017
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1018
    iput-object p1, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 1019
    iput-object p2, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 1020
    iput-object p3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 1014
    return-void
.end method

.method public setProprietaryDataRadioTechnology(I)V
    .locals 3
    .param p1, "rt"    # I

    .prologue
    .line 1402
    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 1403
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ServiceState] setProprietaryDataRadioTechnology ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iput p1, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 1406
    const/16 v0, 0x8b

    if-ne p1, v0, :cond_0

    .line 1409
    const/16 p1, 0x13

    .line 1417
    :goto_0
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1401
    return-void

    .line 1411
    :cond_0
    const/16 p1, 0xf

    goto :goto_0

    .line 1414
    :cond_1
    const-string/jumbo v0, "PHONE"

    const-string/jumbo v1, "[ServiceState] setProprietaryDataRadioTechnology=0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    goto :goto_0
.end method

.method public setRegState(I)V
    .locals 0
    .param p1, "nRegState"    # I

    .prologue
    .line 1439
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setRilVoiceRegState(I)V

    .line 1438
    return-void
.end method

.method public setRilDataRadioTechnology(I)V
    .locals 3
    .param p1, "rt"    # I

    .prologue
    .line 1152
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    .line 1153
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ServiceState] setDataRadioTechnology="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method

.method public setRilDataRegState(I)V
    .locals 0
    .param p1, "nDataRegState"    # I

    .prologue
    .line 1453
    iput p1, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 1452
    return-void
.end method

.method public setRilVoiceRadioTechnology(I)V
    .locals 0
    .param p1, "rt"    # I

    .prologue
    .line 1147
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    .line 1146
    return-void
.end method

.method public setRilVoiceRegState(I)V
    .locals 0
    .param p1, "nRegState"    # I

    .prologue
    .line 1446
    iput p1, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 1445
    return-void
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .prologue
    .line 955
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 956
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    iput v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    .line 954
    return-void

    .line 955
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 939
    const-string/jumbo v0, "PHONE"

    const-string/jumbo v1, "[ServiceState] setState deprecated use setVoiceRegState()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method public setStateOff()V
    .locals 1

    .prologue
    .line 934
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 933
    return-void
.end method

.method public setStateOutOfService()V
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/ServiceState;->setNullState(I)V

    .line 929
    return-void
.end method

.method public setSystemAndNetworkId(II)V
    .locals 0
    .param p1, "systemId"    # I
    .param p2, "networkId"    # I

    .prologue
    .line 1163
    iput p1, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 1164
    iput p2, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 1162
    return-void
.end method

.method public setVoiceOperatorAlphaLong(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 1050
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1049
    return-void
.end method

.method public setVoiceOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;

    .prologue
    .line 1025
    iput-object p1, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 1026
    iput-object p2, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 1027
    iput-object p3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 1024
    return-void
.end method

.method public setVoiceRegState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 944
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    .line 945
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ServiceState] setVoiceRegState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    return-void
.end method

.method public setVoiceRejectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 1386
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 1385
    return-void
.end method

.method public setVoiceRoaming(Z)V
    .locals 1
    .param p1, "roaming"    # Z

    .prologue
    .line 961
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 960
    return-void

    .line 961
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVoiceRoamingType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 966
    iput p1, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    .line 965
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 863
    iget v2, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "radioTechnology":Ljava/lang/String;
    iget v2, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, "dataRadioTechnology":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 867
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 868
    const-string/jumbo v3, "voice "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 868
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 869
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 870
    const-string/jumbo v3, "data "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 870
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-static {v3}, Landroid/telephony/ServiceState;->getRoamingLogString(I)Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 871
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 872
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 873
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 873
    iget-object v3, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 874
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 874
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 875
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 875
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 876
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 876
    iget-object v3, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 877
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 877
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "(manual)"

    .line 866
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 878
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 879
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 880
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 880
    iget-boolean v2, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "CSS supported"

    .line 866
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 881
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 881
    iget v3, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 882
    const-string/jumbo v3, " "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 882
    iget v3, p0, Landroid/telephony/ServiceState;->mSystemId:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 883
    const-string/jumbo v3, " RoamInd="

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 883
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 884
    const-string/jumbo v3, " DefRoamInd="

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 884
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 885
    const-string/jumbo v3, " EmergOnly="

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 885
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 887
    const-string/jumbo v3, " Ril Voice Regist state: "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 887
    iget v3, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    const-string/jumbo v3, " Ril Data Regist state: "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 888
    iget v3, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 889
    const-string/jumbo v3, " mProprietaryDataRadioTechnology: "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 889
    iget v3, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 890
    const-string/jumbo v3, " VoiceRejectCause: "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 890
    iget v3, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 891
    const-string/jumbo v3, " DataRejectCause: "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 891
    iget v3, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 892
    const-string/jumbo v3, " mCdmaNetWorkMode: "

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 892
    iget v3, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 894
    const-string/jumbo v3, " IsDataRoamingFromRegistration="

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 894
    iget-boolean v3, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    .line 866
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 877
    :cond_0
    const-string/jumbo v2, ""

    goto/16 :goto_0

    .line 880
    :cond_1
    const-string/jumbo v2, "CSS not supported"

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 421
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Landroid/telephony/ServiceState;->mVoiceOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Landroid/telephony/ServiceState;->mDataOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsManualNetworkSelection:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mCssIndicator:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget v0, p0, Landroid/telephony/ServiceState;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget v0, p0, Landroid/telephony/ServiceState;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaDefaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaEriIconMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsEmergencyOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Landroid/telephony/ServiceState;->mRilVoiceRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/telephony/ServiceState;->mRilDataRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Landroid/telephony/ServiceState;->mProprietaryDataRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Landroid/telephony/ServiceState;->mVoiceRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v0, p0, Landroid/telephony/ServiceState;->mDataRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Landroid/telephony/ServiceState;->mCdmaNetWorkMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget-boolean v0, p0, Landroid/telephony/ServiceState;->mIsDataRoamingFromRegistration:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    return-void

    :cond_0
    move v0, v2

    .line 431
    goto :goto_0

    :cond_1
    move v0, v2

    .line 434
    goto :goto_1

    :cond_2
    move v0, v2

    .line 441
    goto :goto_2

    :cond_3
    move v1, v2

    .line 452
    goto :goto_3
.end method
