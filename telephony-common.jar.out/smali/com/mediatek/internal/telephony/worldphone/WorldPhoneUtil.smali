.class public Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;
.super Ljava/lang/Object;
.source "WorldPhoneUtil.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# static fields
.field private static final ACTIVE_MD_TYPE_LTG:I = 0x4

.field private static final ACTIVE_MD_TYPE_LWCG:I = 0x5

.field private static final ACTIVE_MD_TYPE_LWG:I = 0x3

.field private static final ACTIVE_MD_TYPE_LfWG:I = 0x7

.field private static final ACTIVE_MD_TYPE_LtTG:I = 0x6

.field private static final ACTIVE_MD_TYPE_TG:I = 0x2

.field private static final ACTIVE_MD_TYPE_UNKNOWN:I = 0x0

.field private static final ACTIVE_MD_TYPE_WG:I = 0x1

.field private static final IS_CDMA_LTE_DC_SUPPORT:Z

.field private static final IS_LTE_SUPPORT:Z

.field private static final IS_WORLD_MODE_SUPPORT:Z

.field private static final IS_WORLD_PHONE_SUPPORT:Z

.field private static final PROJECT_SIM_NUM:I

.field private static final PROPERTY_MAJOR_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field public static final UTRAN_DIVISION_DUPLEX_MODE_FDD:I = 0x1

.field public static final UTRAN_DIVISION_DUPLEX_MODE_TDD:I = 0x2

.field public static final UTRAN_DIVISION_DUPLEX_MODE_UNKNOWN:I

.field private static sActivePhones:[Lcom/android/internal/telephony/Phone;

.field private static sContext:Landroid/content/Context;

.field private static sDefultPhone:Lcom/android/internal/telephony/Phone;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    .line 74
    const-string/jumbo v0, "ro.mtk_world_phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 73
    :goto_0
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    .line 76
    const-string/jumbo v0, "ro.mtk_lte_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 75
    :goto_1
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    .line 78
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    .line 77
    sput-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_CDMA_LTE_DC_SUPPORT:Z

    .line 80
    const-string/jumbo v0, "ro.mtk_md_world_mode_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 79
    :goto_2
    sput-boolean v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    .line 82
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 83
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    sput-object v3, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 85
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    :cond_1
    move v0, v2

    .line 76
    goto :goto_1

    :cond_2
    move v1, v2

    .line 80
    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string/jumbo v1, "Constructor invoked"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 93
    sget-object v2, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sActivePhones:[Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    aput-object v1, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    .line 96
    sget-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sDefultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    .line 88
    :goto_1
    return-void

    .line 98
    :cond_1
    const-string/jumbo v1, "DefaultPhone = null"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static denyReasonToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 231
    packed-switch p0, :pswitch_data_0

    .line 248
    const-string/jumbo v0, "Invalid Reason"

    .line 252
    .local v0, "drString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 233
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "CAMP_ON_NOT_DENIED"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_UNKNOWN"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_FDD"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_NEED_SWITCH_TO_TDD"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 245
    .end local v0    # "drString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "CAMP_ON_DENY_REASON_DOMESTIC_FDD_MD"

    .restart local v0    # "drString":Ljava/lang/String;
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static get3GDivisionDuplexMode()I
    .locals 4

    .prologue
    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "duplexMode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getActiveModemType()I

    move-result v0

    .line 331
    .local v0, "activeMdType":I
    packed-switch v0, :pswitch_data_0

    .line 344
    :pswitch_0
    const/4 v1, 0x0

    .line 347
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get3GDivisionDuplexMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 348
    return v1

    .line 335
    :pswitch_1
    const/4 v1, 0x1

    .line 336
    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v1, 0x2

    .line 342
    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getActiveModemType()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "modemType":I
    const/4 v0, 0x0

    .line 355
    .local v0, "activeMdType":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v2

    .line 357
    packed-switch v2, :pswitch_data_0

    .line 371
    const/4 v0, 0x0

    .line 413
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveModemType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 414
    return v0

    .line 359
    :pswitch_0
    const/4 v0, 0x1

    .line 360
    goto :goto_0

    .line 362
    :pswitch_1
    const/4 v0, 0x2

    .line 363
    goto :goto_0

    .line 365
    :pswitch_2
    const/4 v0, 0x3

    .line 366
    goto :goto_0

    .line 368
    :pswitch_3
    const/4 v0, 0x4

    .line 369
    goto :goto_0

    .line 375
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->getWorldMode()I

    move-result v2

    .line 377
    const-string/jumbo v3, "ril.nw.worldmode.activemode"

    .line 378
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 376
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 379
    .local v1, "activeMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getActiveModemType]: activeMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 380
    packed-switch v2, :pswitch_data_1

    .line 409
    const/4 v0, 0x0

    .line 410
    goto :goto_0

    .line 382
    :pswitch_4
    const/4 v0, 0x4

    .line 383
    goto :goto_0

    .line 385
    :pswitch_5
    const/4 v0, 0x3

    .line 386
    goto :goto_0

    .line 389
    :pswitch_6
    if-lez v1, :cond_0

    .line 390
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 392
    const/4 v0, 0x3

    goto :goto_0

    .line 393
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 395
    const/4 v0, 0x4

    goto :goto_0

    .line 400
    :pswitch_7
    const/4 v0, 0x5

    .line 401
    goto :goto_0

    .line 403
    :pswitch_8
    const/4 v0, 0x6

    .line 404
    goto :goto_0

    .line 406
    :pswitch_9
    const/4 v0, 0x7

    .line 407
    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 380
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static getMajorSim()I
    .locals 3

    .prologue
    .line 108
    const-string/jumbo v1, "persist.radio.simswitch"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "currMajorSim":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    const-string/jumbo v1, "[getMajorSim]: fail to get major SIM"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 114
    const/16 v1, -0x63

    return v1

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getMajorSim]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public static getModemSelectionMode()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    sget-object v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 124
    const-string/jumbo v0, "sContext = null"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 125
    return v1

    .line 130
    :cond_0
    return v1
.end method

.method public static getProjectSimNum()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->PROJECT_SIM_NUM:I

    return v0
.end method

.method public static getRadioTechModeForWp()I
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "mode":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string/jumbo v1, "[getRadioTechModeForWp]: GMCadiom: TODO for CDMA!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 308
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getRadioTechModeForWp]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->logd(Ljava/lang/String;)V

    .line 309
    return v0

    .line 306
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static iccCardTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "iccCardType"    # I

    .prologue
    .line 257
    packed-switch p0, :pswitch_data_0

    .line 268
    const-string/jumbo v0, "Invalid Icc Card Type"

    .line 272
    .local v0, "iccTypeString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 259
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "SIM"

    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 262
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "USIM"

    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 265
    .end local v0    # "iccTypeString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "Icc Card Type Unknown"

    .restart local v0    # "iccTypeString":Ljava/lang/String;
    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isCdmaLteDcSupport()Z
    .locals 1

    .prologue
    .line 282
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_CDMA_LTE_DC_SUPPORT:Z

    return v0
.end method

.method public static isLteSupport()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_LTE_SUPPORT:Z

    return v0
.end method

.method public static isWorldModeSupport()Z
    .locals 1

    .prologue
    .line 314
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_MODE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSupport()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->IS_WORLD_PHONE_SUPPORT:Z

    return v0
.end method

.method public static isWorldPhoneSwitching()Z
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->isWorldModeSwitching()Z

    move-result v0

    return v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 426
    const-string/jumbo v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[WPP_UTIL]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method public static regStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "regState"    # I

    .prologue
    .line 186
    packed-switch p0, :pswitch_data_0

    .line 222
    :pswitch_0
    const-string/jumbo v0, "Invalid RegState"

    .line 226
    .local v0, "rsString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 188
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REGISTRATION_STATE_HOME_NETWORK"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "REGISTRATION_STATE_REGISTRATION_DENIED"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "REGISTRATION_STATE_UNKNOWN"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "REGISTRATION_STATE_ROAMING"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_NOT_SEARCHING_EMERGENCY_CALL_ENABLED"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "REGISTRATION_STATE_NOT_REGISTERED_AND_SEARCHING_EMERGENCY_CALL_ENABLED"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 216
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "REGISTRATION_STATE_REGISTRATION_DENIED_EMERGENCY_CALL_ENABLED"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "rsString":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "REGISTRATION_STATE_UNKNOWN_EMERGENCY_CALL_ENABLED"

    .restart local v0    # "rsString":Ljava/lang/String;
    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static regionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "region"    # I

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 154
    const-string/jumbo v0, "Invalid Region"

    .line 158
    .local v0, "regionString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 145
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "REGION_UNKNOWN"

    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "REGION_DOMESTIC"

    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v0    # "regionString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "REGION_FOREIGN"

    .restart local v0    # "regionString":Ljava/lang/String;
    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 163
    packed-switch p0, :pswitch_data_0

    .line 177
    const-string/jumbo v0, "Invalid State"

    .line 181
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 165
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "STATE_POWER_OFF"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "STATE_IN_SERVICE"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "STATE_OUT_OF_SERVICE"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0    # "stateString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "STATE_EMERGENCY_ONLY"

    .restart local v0    # "stateString":Ljava/lang/String;
    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public notifyRadioCapabilityChange(I)V
    .locals 0
    .param p1, "capailitySimId"    # I

    .prologue
    .line 278
    return-void
.end method

.method public setModemSelectionMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "modemType"    # I

    .prologue
    .line 275
    return-void
.end method
