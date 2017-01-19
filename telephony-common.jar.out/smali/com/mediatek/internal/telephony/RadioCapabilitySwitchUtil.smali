.class public Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;
.super Ljava/lang/Object;
.source "RadioCapabilitySwitchUtil.java"


# static fields
.field public static final CN_MCC:Ljava/lang/String; = "460"

.field public static final DO_SWITCH:I = 0x0

.field public static final ICCID_ERROR:I = 0x3

.field public static final IMSI_NOT_READY_OR_SIM_LOCKED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAIN_SIM_PROP:Ljava/lang/String; = "persist.radio.simswitch.iccid"

.field public static final NOT_SHOW_DIALOG:I = 0x1

.field public static final NOT_SWITCH:I = 0x1

.field public static final NOT_SWITCH_SIM_INFO_NOT_READY:I = 0x2

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROPERTY_ICCID:Ljava/lang/String; = "ril.iccid.sim"

.field private static final PROPERTY_SIM_ICCID:[Ljava/lang/String;

.field public static final SHOW_DIALOG:I = 0x0

.field public static final SIM_OP_INFO_OP01:I = 0x2

.field public static final SIM_OP_INFO_OP02:I = 0x3

.field public static final SIM_OP_INFO_OVERSEA:I = 0x1

.field public static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field public static final SIM_SWITCH_MODE_DUAL_TALK:I = 0x3

.field public static final SIM_SWITCH_MODE_DUAL_TALK_SWAP:I = 0x4

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS:I = 0x1

.field public static final SIM_SWITCH_MODE_SINGLE_TALK_MDSYS_LITE:I = 0x2

.field public static final SIM_TYPE_OTHER:I = 0x2

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_USIM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "46000"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46002"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46007"

    aput-object v1, v0, v5

    const-string/jumbo v1, "46008"

    aput-object v1, v0, v6

    const-string/jumbo v1, "45412"

    aput-object v1, v0, v7

    const-string/jumbo v1, "45413"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "00101"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "00211"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "00321"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "00431"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "00541"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "00651"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "00761"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "00871"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "00902"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "01012"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "01122"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "01232"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "46004"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "46602"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "50270"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "46003"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "46011"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 82
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "46001"

    aput-object v1, v0, v3

    const-string/jumbo v1, "46006"

    aput-object v1, v0, v4

    const-string/jumbo v1, "46009"

    aput-object v1, v0, v5

    const-string/jumbo v1, "45407"

    aput-object v1, v0, v6

    .line 93
    const-string/jumbo v1, "46005"

    aput-object v1, v0, v7

    const-string/jumbo v1, "45502"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    .line 99
    new-array v0, v7, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v3

    .line 101
    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v4

    .line 102
    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    .line 103
    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    .line 99
    sput-object v0, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOp01(I[I[I)Z
    .locals 10
    .param p0, "targetPhoneId"    # I
    .param p1, "simOpInfo"    # [I
    .param p2, "simType"    # [I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 342
    const-string/jumbo v5, "persist.radio.simswitch"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 344
    .local v0, "curPhoneId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkOp01 : curPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 345
    aget v5, p1, p0

    if-ne v5, v9, :cond_2

    .line 346
    aget v5, p2, p0

    if-nez v5, :cond_1

    .line 347
    aget v5, p1, v0

    if-ne v5, v9, :cond_0

    .line 348
    aget v5, p2, v0

    if-eqz v5, :cond_0

    .line 349
    const-string/jumbo v5, "checkOp01 : case 1,2; stay in current phone"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 350
    return v8

    .line 354
    :cond_0
    const-string/jumbo v5, "checkOp01 : case 3,4"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 355
    return v7

    .line 360
    :cond_1
    const-string/jumbo v5, "checkOp01 : case 1,2"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 361
    return v7

    .line 363
    :cond_2
    aget v5, p1, p0

    if-ne v5, v7, :cond_6

    .line 364
    aget v5, p1, v0

    if-ne v5, v9, :cond_3

    .line 365
    const-string/jumbo v5, "checkOp01 : case 1,2,3,4; stay in current phone"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 366
    return v8

    .line 367
    :cond_3
    aget v5, p2, p0

    if-nez v5, :cond_5

    .line 368
    aget v5, p1, v0

    if-ne v5, v7, :cond_4

    .line 369
    aget v5, p2, v0

    if-eqz v5, :cond_4

    .line 370
    const-string/jumbo v5, "checkOp01 : case 5,6; stay in current phone"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 371
    return v8

    .line 375
    :cond_4
    const-string/jumbo v5, "checkOp01 : case 7,8"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 376
    return v7

    .line 381
    :cond_5
    const-string/jumbo v5, "checkOp01 : case 5,6"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 382
    return v7

    .line 385
    :cond_6
    aget v5, p1, p0

    if-nez v5, :cond_9

    .line 386
    const-string/jumbo v5, "checkOp01 : case 10, target IMSI not ready"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 387
    const/4 v3, 0x0

    .line 388
    .local v3, "insertedStatus":I
    array-length v4, p1

    .line 389
    .local v4, "phoneNum":I
    new-array v1, v4, [Ljava/lang/String;

    .line 390
    .local v1, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_8

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ril.iccid.sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 392
    const-string/jumbo v5, "N/A"

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 393
    shl-int v5, v7, v2

    or-int/2addr v3, v5

    .line 390
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 396
    :cond_8
    if-gt v3, v9, :cond_9

    .line 397
    const-string/jumbo v5, "checkOp01 : case 10, single SIM case, switch!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 398
    return v7

    .line 401
    .end local v1    # "currIccId":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "insertedStatus":I
    .end local v4    # "phoneNum":I
    :cond_9
    const-string/jumbo v5, "ro.mtk_world_phone_policy"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 402
    aget v5, p1, v0

    if-eq v5, v9, :cond_a

    .line 403
    aget v5, p1, v0

    if-eq v5, v7, :cond_a

    .line 404
    const-string/jumbo v5, "checkOp01 : case 11, op01-B, switch it!"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 405
    return v7

    .line 409
    :cond_a
    const-string/jumbo v5, "checkOp01 : case 9"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 410
    return v8
.end method

.method public static getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I
    .locals 5
    .param p0, "curId"    # I
    .param p1, "op01Usim"    # [Z
    .param p2, "op01Sim"    # [Z
    .param p3, "overseaUsim"    # [Z
    .param p4, "overseaSim"    # [Z

    .prologue
    const/4 v4, -0x1

    .line 302
    const/4 v2, -0x1

    .line 303
    .local v2, "targetSim":I
    array-length v1, p1

    .line 305
    .local v1, "phoneNum":I
    aget-boolean v3, p1, p0

    if-eqz v3, :cond_0

    .line 306
    return p0

    .line 308
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 309
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_1

    .line 310
    move v2, v0

    .line 308
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    :cond_2
    if-ne v2, v4, :cond_3

    aget-boolean v3, p2, p0

    if-eqz v3, :cond_4

    .line 314
    :cond_3
    return v2

    .line 316
    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 317
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_5

    .line 318
    move v2, v0

    .line 316
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_6
    if-ne v2, v4, :cond_7

    aget-boolean v3, p3, p0

    if-eqz v3, :cond_8

    .line 322
    :cond_7
    return v2

    .line 324
    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_a

    .line 325
    aget-boolean v3, p3, v0

    if-eqz v3, :cond_9

    .line 326
    move v2, v0

    .line 324
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 329
    :cond_a
    if-ne v2, v4, :cond_b

    aget-boolean v3, p4, p0

    if-eqz v3, :cond_c

    .line 330
    :cond_b
    return v2

    .line 332
    :cond_c
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_e

    .line 333
    aget-boolean v3, p4, v0

    if-eqz v3, :cond_d

    .line 334
    move v2, v0

    .line 332
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 337
    :cond_e
    return v2
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "phoneId":I
    const-string/jumbo v2, "ro.mtk_dt_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 422
    const-string/jumbo v2, "persist.ril.simswitch.swapmode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 423
    .local v1, "swapMode":I
    if-ne v1, v4, :cond_1

    .line 424
    const/4 v0, 0x0

    .line 449
    .end local v1    # "swapMode":I
    :cond_0
    :goto_0
    const-string/jumbo v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[RadioCapSwitchUtil] getMainCapabilityPhoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v0

    .line 425
    .restart local v1    # "swapMode":I
    :cond_1
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 426
    const/4 v0, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "swapMode":I
    :cond_2
    const-string/jumbo v2, "persist.radio.simswitch"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method public static getSimInfo([I[II)Z
    .locals 13
    .param p0, "simOpInfo"    # [I
    .param p1, "simType"    # [I
    .param p2, "insertedStatus"    # I

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 151
    array-length v5, p0

    new-array v3, v5, [Ljava/lang/String;

    .line 152
    .local v3, "strMnc":[Ljava/lang/String;
    array-length v5, p0

    new-array v4, v5, [Ljava/lang/String;

    .line 155
    .local v4, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_d

    .line 156
    if-nez v0, :cond_2

    .line 157
    const-string/jumbo v2, "gsm.ril.uicctype"

    .line 161
    .local v2, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 162
    aget-object v5, v4, v0

    const-string/jumbo v7, "SIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 163
    aput v6, p1, v0

    .line 169
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SimType["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", simType["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, p1, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v5, "gsm.sim.operator.imsi"

    const-string/jumbo v7, ""

    invoke-static {v0, v5, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 171
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v12, :cond_0

    .line 172
    aget-object v5, v3, v0

    invoke-virtual {v5, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 174
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strMnc["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] from gsm.sim.operator.imsi:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 175
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    if-nez v0, :cond_5

    .line 177
    const-string/jumbo v2, "gsm.sim.ril.mcc.mnc"

    .line 181
    :goto_3
    const-string/jumbo v5, ""

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strMnc["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "] from ril.mcc.mnc:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 184
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertedStatus:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 185
    if-ltz p2, :cond_7

    shl-int v5, v10, v0

    and-int/2addr v5, p2

    if-lez v5, :cond_7

    .line 186
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 187
    const-string/jumbo v5, "SIM is inserted but no imsi"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 188
    return v6

    .line 159
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.ril.uicctype."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 164
    :cond_3
    aget-object v5, v4, v0

    const-string/jumbo v7, "USIM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    aput v10, p1, v0

    goto/16 :goto_2

    .line 167
    :cond_4
    aput v11, p1, v0

    goto/16 :goto_2

    .line 179
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 190
    :cond_6
    aget-object v5, v3, v0

    const-string/jumbo v7, "sim_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 191
    const-string/jumbo v5, "SIM is lock, wait pin unlock"

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 192
    return v6

    .line 195
    :cond_7
    sget-object v7, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_4
    if-ge v5, v8, :cond_8

    aget-object v1, v7, v5

    .line 196
    .local v1, "mccmnc":Ljava/lang/String;
    aget-object v9, v3, v0

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 197
    aput v11, p0, v0

    .line 201
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_8
    aget v5, p0, v0

    if-nez v5, :cond_9

    .line 202
    sget-object v7, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_5
    if-ge v5, v8, :cond_9

    aget-object v1, v7, v5

    .line 203
    .restart local v1    # "mccmnc":Ljava/lang/String;
    aget-object v9, v3, v0

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 204
    const/4 v5, 0x3

    aput v5, p0, v0

    .line 209
    .end local v1    # "mccmnc":Ljava/lang/String;
    :cond_9
    aget v5, p0, v0

    if-nez v5, :cond_a

    .line 210
    aget-object v5, v3, v0

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 211
    aput v10, p0, v0

    .line 214
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strMnc["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", simOpInfo["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, p0, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 195
    .restart local v1    # "mccmnc":Ljava/lang/String;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 202
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 216
    .end local v1    # "mccmnc":Ljava/lang/String;
    .end local v2    # "propStr":Ljava/lang/String;
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 218
    return v10
.end method

.method public static isAnySimLocked(I)Z
    .locals 8
    .param p0, "phoneNum"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 573
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 574
    const-string/jumbo v4, "isAnySimLocked always returns false in C2K"

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 575
    return v6

    .line 579
    :cond_0
    new-array v2, p0, [Ljava/lang/String;

    .line 580
    .local v2, "mnc":[Ljava/lang/String;
    new-array v1, p0, [Ljava/lang/String;

    .line 582
    .local v1, "iccid":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_7

    .line 583
    sget-object v4, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 585
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 586
    const-string/jumbo v4, "gsm.sim.operator.imsi"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 587
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 588
    aget-object v4, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 590
    :cond_1
    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 591
    if-nez v0, :cond_4

    .line 592
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 596
    .local v3, "propStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mnc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] from ril.mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 600
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from gsm.sim.operator.imsi:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 601
    aget-object v4, v1, v0

    const-string/jumbo v5, "N/A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v2, v0

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 602
    aget-object v4, v2, v0

    const-string/jumbo v5, "sim_lock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 601
    if-eqz v4, :cond_5

    .line 603
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 594
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 606
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clear mcc.mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 607
    if-nez v0, :cond_6

    .line 608
    const-string/jumbo v3, "gsm.sim.ril.mcc.mnc"

    .line 612
    .restart local v3    # "propStr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 610
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 615
    .end local v3    # "propStr":Ljava/lang/String;
    :cond_7
    return v6
.end method

.method public static isNeedShowSimDialog()I
    .locals 14

    .prologue
    .line 481
    const-string/jumbo v12, "ro.mtk_disable_cap_switch"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 482
    const-string/jumbo v12, "mtk_disable_cap_switch is true"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 483
    const/4 v12, 0x0

    return v12

    .line 486
    :cond_0
    const-string/jumbo v12, "isNeedShowSimDialog start"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 488
    .local v7, "phoneCount":I
    new-array v9, v7, [I

    .line 489
    .local v9, "simOpInfo":[I
    new-array v10, v7, [I

    .line 490
    .local v10, "simType":[I
    new-array v0, v7, [Ljava/lang/String;

    .line 491
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 492
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 493
    .local v3, "insertedStatus":I
    const/4 v4, 0x0

    .line 494
    .local v4, "op02CardCount":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 495
    .local v11, "usimIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v8, "simIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v5, "op02IndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v6, "otherIndexList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_4

    .line 500
    sget-object v12, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v1

    .line 501
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "currIccid["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 502
    aget-object v12, v0, v1

    if-eqz v12, :cond_1

    const-string/jumbo v12, ""

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 503
    :cond_1
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "iccid not found, wait for next sim state change"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v12, 0x3

    return v12

    .line 506
    :cond_2
    const-string/jumbo v12, "N/A"

    aget-object v13, v0, v1

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 507
    add-int/lit8 v2, v2, 0x1

    .line 508
    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v3, v12

    .line 499
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :cond_4
    const/4 v12, 0x2

    if-ge v2, v12, :cond_5

    .line 513
    const-string/jumbo v12, "isNeedShowSimDialog: insert sim count < 2, do not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 514
    const/4 v12, 0x1

    return v12

    .line 517
    :cond_5
    invoke-static {v9, v10, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v12

    if-nez v12, :cond_6

    .line 518
    const-string/jumbo v12, "GSM"

    const-string/jumbo v13, "Can\'t get SIM information"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v12, 0x2

    return v12

    .line 521
    :cond_6
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_a

    .line 523
    aget v12, v10, v1

    const/4 v13, 0x1

    if-ne v13, v12, :cond_8

    .line 524
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_7
    :goto_2
    aget v12, v9, v1

    const/4 v13, 0x3

    if-ne v13, v12, :cond_9

    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    :cond_8
    aget v12, v10, v1

    if-nez v12, :cond_7

    .line 526
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 533
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 536
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "usimIndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 537
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "op02IndexList size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_d

    .line 541
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_c

    .line 542
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 543
    add-int/lit8 v4, v4, 0x1

    .line 541
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 547
    :cond_c
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 548
    const-string/jumbo v12, "One OP02Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 549
    const/4 v12, 0x1

    return v12

    .line 551
    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 552
    const-string/jumbo v12, "One Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 553
    const/4 v12, 0x1

    return v12

    .line 557
    :cond_e
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v1, v12, :cond_10

    .line 558
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 559
    add-int/lit8 v4, v4, 0x1

    .line 557
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 563
    :cond_10
    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 564
    const-string/jumbo v12, "One non-OP02 Usim inserted, not show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 565
    const/4 v12, 0x1

    return v12

    .line 568
    :cond_11
    const-string/jumbo v12, "Show dialog"

    invoke-static {v12}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 569
    const/4 v12, 0x0

    return v12
.end method

.method public static isNeedSwitchInOpPackage([Lcom/android/internal/telephony/Phone;[Landroid/telephony/RadioAccessFamily;)I
    .locals 14
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;
    .param p1, "rats"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 231
    const-string/jumbo v11, "ro.operator.optr"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "operatorSpec":Ljava/lang/String;
    array-length v11, p0

    new-array v6, v11, [I

    .line 233
    .local v6, "simOpInfo":[I
    array-length v11, p0

    new-array v7, v11, [I

    .line 235
    .local v7, "simType":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 236
    .local v5, "phoneCount":I
    const/4 v2, 0x0

    .line 237
    .local v2, "insertedSimCount":I
    const/4 v3, 0x0

    .line 238
    .local v3, "insertedStatus":I
    new-array v0, v5, [Ljava/lang/String;

    .line 240
    .local v0, "currIccId":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Operator Spec:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v11, "ro.mtk_disable_cap_switch"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 242
    const-string/jumbo v9, "mtk_disable_cap_switch is true"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 243
    return v10

    .line 244
    :cond_0
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 252
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_5

    .line 253
    sget-object v11, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->PROPERTY_SIM_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v1

    .line 254
    aget-object v11, v0, v1

    if-eqz v11, :cond_1

    const-string/jumbo v11, ""

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 255
    :cond_1
    const-string/jumbo v9, "error: iccid not found, not switch, return NOT_SWITCH_SIM_INFO_NOT_READY"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 256
    return v13

    .line 248
    .end local v1    # "i":I
    :cond_2
    return v9

    .line 258
    .restart local v1    # "i":I
    :cond_3
    const-string/jumbo v11, "N/A"

    aget-object v12, v0, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 260
    shl-int v11, v10, v1

    or-int/2addr v3, v11

    .line 252
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_5
    invoke-static {v6, v7, v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v11

    if-nez v11, :cond_6

    .line 264
    if-eq v2, v10, :cond_6

    .line 265
    return v13

    .line 270
    :cond_6
    const/4 v8, 0x0

    .local v8, "targetPhoneId":I
    :goto_1
    array-length v11, p1

    if-ge v8, v11, :cond_7

    .line 271
    const-string/jumbo v11, "ro.mtk_lte_support"

    invoke-static {v11, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 272
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit16 v11, v11, 0x4000

    .line 273
    const/16 v12, 0x4000

    .line 272
    if-ne v11, v12, :cond_9

    .line 283
    :cond_7
    const-string/jumbo v11, "OP01"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 284
    invoke-static {v8, v6, v7}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->checkOp01(I[I[I)Z

    move-result v11

    if-eqz v11, :cond_a

    :goto_2
    return v9

    .line 277
    :cond_8
    aget-object v11, p1, v8

    invoke-virtual {v11}, Landroid/telephony/RadioAccessFamily;->getRadioAccessFamily()I

    move-result v11

    and-int/lit8 v11, v11, 0x8

    .line 278
    const/16 v12, 0x8

    .line 277
    if-eq v11, v12, :cond_7

    .line 270
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_a
    move v9, v10

    .line 284
    goto :goto_2

    .line 286
    :cond_b
    return v9
.end method

.method public static isSimContainsCdmaApp(I)Z
    .locals 1
    .param p0, "simId"    # I

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 454
    const-string/jumbo v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[RadioCapSwitchUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public static updateIccid([Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p0, "mProxyPhones"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "bIsMajorPhone":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 124
    const-string/jumbo v3, "ro.mtk_lte_support"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 125
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    .line 126
    const/16 v4, 0x4000

    .line 125
    if-ne v3, v4, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 135
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ril.iccid.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "currIccId":Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.simswitch.iccid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->logd(Ljava/lang/String;)V

    .line 120
    .end local v1    # "currIccId":Ljava/lang/String;
    :cond_1
    return-void

    .line 130
    :cond_2
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    .line 131
    const/16 v4, 0x8

    .line 130
    if-ne v3, v4, :cond_0

    .line 132
    const/4 v0, 0x1

    goto :goto_1

    .line 122
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
