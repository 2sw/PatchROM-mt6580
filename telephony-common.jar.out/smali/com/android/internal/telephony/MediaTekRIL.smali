.class public Lcom/android/internal/telephony/MediaTekRIL;
.super Lcom/android/internal/telephony/RIL;
.source "MediaTekRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;,
        Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;
    }
.end annotation


# static fields
.field static final C2K_SOCKET_NAME_RIL:Ljava/lang/String; = "rild-via"

.field private static final CARD_TYPE_CSIM:I = 0x4

.field private static final CARD_TYPE_RUIM:I = 0x8

.field private static final CARD_TYPE_SIM:I = 0x1

.field private static final CARD_TYPE_USIM:I = 0x2

.field private static final INITIAL_RETRY_INTERVAL_MSEC:I = 0xc8

.field private static final PROPERTY_CONFIG_EMDSTATUS_SEND:Ljava/lang/String; = "ril.cdma.emdstatus.send"

.field private static final PROPERTY_NET_CDMA_MDMSTAT:Ljava/lang/String; = "net.cdma.mdmstat"

.field private static final PROPERTY_RIL_CARD_TYPE_SET:Ljava/lang/String; = "gsm.ril.cardtypeset"

.field private static final PROPERTY_RIL_CARD_TYPE_SET_2:Ljava/lang/String; = "gsm.ril.cardtypeset.2"

.field private static final PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;


# instance fields
.field private mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

.field private mPreviousPreferredType:I


# direct methods
.method static synthetic -wrap0(Ljava/io/InputStream;[B)I
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->readRilMessage(Ljava/io/InputStream;[B)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "gsm.ril.fulluicctype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "gsm.ril.fulluicctype.2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "gsm.ril.fulluicctype.3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "gsm.ril.fulluicctype.4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Lcom/android/internal/telephony/MediaTekRIL;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    .line 174
    new-instance v0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;-><init>(Lcom/android/internal/telephony/MediaTekRIL;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    .line 174
    new-instance v0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;-><init>(Lcom/android/internal/telephony/MediaTekRIL;)V

    iput-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    .line 181
    return-void
.end method

.method private checkMoMSSubPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "subPermission"    # Ljava/lang/String;

    .prologue
    .line 3932
    const-string/jumbo v0, "MoMS: no-op!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3949
    const/4 v0, 0x1

    return v0
.end method

.method public static convertKSC5601(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 3585
    const-string/jumbo v5, "RILJ"

    const-string/jumbo v6, "convertKSC5601"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    const-string/jumbo v2, ""

    .line 3589
    .local v2, "output":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3590
    .local v4, "ucslen":I
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 3591
    .local v1, "inData":[B
    if-eqz v1, :cond_1

    .line 3593
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v5, "KSC5601"

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3595
    .local v3, "strKSC":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3596
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 3597
    :goto_0
    if-lez v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xf8f7

    if-ne v5, v6, :cond_0

    .line 3598
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3600
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3607
    .end local v1    # "inData":[B
    .end local v3    # "strKSC":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 3603
    :catch_0
    move-exception v0

    .line 3604
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Implausible UnsupportedEncodingException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getAdnRecordFromPBEntry(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3627
    if-nez p0, :cond_0

    .line 3628
    return-object v6

    .line 3630
    :cond_0
    const-string/jumbo v0, ""

    .line 3632
    .local v0, "alphaId":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    const-string/jumbo v4, "FEFE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3633
    invoke-static {p0}, Lcom/android/internal/telephony/MediaTekRIL;->convertKSC5601(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3648
    :goto_0
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRecordFromPBEntry - alphaId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    return-object v0

    .line 3636
    :cond_1
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "getRecordFromPBEntry - Not KSC5601 Data"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 3639
    .local v2, "ba":[B
    if-nez v2, :cond_2

    .line 3640
    return-object v6

    .line 3642
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const-string/jumbo v5, "utf-16be"

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "alphaId":Ljava/lang/String;
    .local v1, "alphaId":Ljava/lang/String;
    move-object v0, v1

    .end local v1    # "alphaId":Ljava/lang/String;
    .restart local v0    # "alphaId":Ljava/lang/String;
    goto :goto_0

    .line 3643
    .end local v2    # "ba":[B
    :catch_0
    move-exception v3

    .line 3644
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Implausible UnsupportedEncodingException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEmailRecordFromPBEntry(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3611
    if-nez p0, :cond_0

    .line 3612
    return-object v1

    .line 3614
    :cond_0
    const-string/jumbo v0, ""

    .line 3616
    .local v0, "email":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const-string/jumbo v1, "FEFE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3617
    invoke-static {p0}, Lcom/android/internal/telephony/MediaTekRIL;->convertKSC5601(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3621
    :goto_0
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEmailRecordFromPBEntry - email = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    return-object v0

    .line 3619
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private getFullCardType(I)I
    .locals 8
    .param p1, "slot"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5212
    if-nez p1, :cond_1

    .line 5213
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "getFullCardType slot0"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    sget-object v4, Lcom/android/internal/telephony/MediaTekRIL;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5222
    .local v1, "cardType":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFullCardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5224
    .local v0, "appType":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 5225
    .local v2, "fullType":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 5226
    const-string/jumbo v4, "USIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5227
    or-int/lit8 v2, v2, 0x2

    .line 5225
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5215
    .end local v0    # "appType":[Ljava/lang/String;
    .end local v1    # "cardType":Ljava/lang/String;
    .end local v2    # "fullType":I
    .end local v3    # "i":I
    :cond_1
    if-ne p1, v6, :cond_2

    .line 5216
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "getFullCardType slot1"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    sget-object v4, Lcom/android/internal/telephony/MediaTekRIL;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cardType":Ljava/lang/String;
    goto :goto_0

    .line 5219
    .end local v1    # "cardType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFullCardType invalid slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5220
    return v7

    .line 5228
    .restart local v0    # "appType":[Ljava/lang/String;
    .restart local v1    # "cardType":Ljava/lang/String;
    .restart local v2    # "fullType":I
    .restart local v3    # "i":I
    :cond_3
    const-string/jumbo v4, "SIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5229
    or-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5230
    :cond_4
    const-string/jumbo v4, "CSIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5231
    or-int/lit8 v2, v2, 0x4

    goto :goto_2

    .line 5232
    :cond_5
    const-string/jumbo v4, "RUIM"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5233
    or-int/lit8 v2, v2, 0x8

    goto :goto_2

    .line 5236
    :cond_6
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fullType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5237
    return v2
.end method

.method private getRequestCount(I)I
    .locals 6
    .param p1, "reuestId"    # I

    .prologue
    .line 3041
    const/4 v0, 0x0

    .line 3042
    .local v0, "count":I
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v5

    .line 3043
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3044
    iget-object v4, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 3045
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_0

    .line 3046
    add-int/lit8 v0, v0, 0x1

    .line 3043
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    monitor-exit v5

    .line 3050
    return v0

    .line 3042
    .end local v3    # "s":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 9
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v8, 0x1

    .line 1805
    iget-object v6, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    monitor-enter v6

    .line 1806
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v2

    .line 1808
    .local v2, "queueSize":I
    if-lez v2, :cond_4

    .line 1809
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->get()Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1810
    .local v3, "rr2":Lcom/android/internal/telephony/RILRequest;
    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v7, 0x31

    if-ne v5, v7, :cond_3

    .line 1812
    const-string/jumbo v5, "DTMF queue isn\'t 0, first request is START, send stop dtmf and pending switch"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1813
    if-le v2, v8, :cond_0

    .line 1814
    const/4 v1, 0x2

    .line 1819
    .local v1, "j":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queue size  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1821
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 1822
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->remove(I)V

    .line 1821
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1817
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_0
    const/4 v1, 0x1

    .restart local v1    # "j":I
    goto :goto_0

    .line 1824
    .restart local v0    # "i":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queue size  after "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v7}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1825
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 1826
    const/16 v5, 0x32

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 1827
    .local v4, "rr3":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v5, "add dummy stop dtmf request"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1828
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->stop()V

    .line 1829
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->add(Lcom/android/internal/telephony/RILRequest;)V

    .line 1840
    .end local v1    # "j":I
    .end local v4    # "rr3":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->setPendingRequest(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    .end local v3    # "rr2":Lcom/android/internal/telephony/RILRequest;
    :goto_2
    monitor-exit v6

    .line 1804
    return-void

    .line 1834
    .restart local v3    # "rr2":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "DTMF queue isn\'t 0, first request is STOP, penging switch"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1836
    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v8, :cond_2

    .line 1837
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->remove(I)V

    .line 1836
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1842
    .end local v0    # "i":I
    .end local v3    # "rr2":Lcom/android/internal/telephony/RILRequest;
    :cond_4
    const-string/jumbo v5, "DTMF queue is 0, send switch Immediately"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1843
    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->setSendChldRequest()V

    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1805
    .end local v2    # "queueSize":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static readRilMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1857
    const/4 v2, 0x0

    .line 1858
    .local v2, "offset":I
    const/4 v3, 0x4

    .line 1860
    .local v3, "remaining":I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1862
    .local v0, "countRead":I
    if-gez v0, :cond_1

    .line 1863
    const-string/jumbo v4, "RILJ"

    const-string/jumbo v5, "Hit EOS reading message length"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    return v7

    .line 1867
    :cond_1
    add-int/2addr v2, v0

    .line 1868
    sub-int/2addr v3, v0

    .line 1869
    if-gtz v3, :cond_0

    .line 1871
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    .line 1872
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    .line 1871
    or-int/2addr v4, v5

    .line 1873
    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 1871
    or-int/2addr v4, v5

    .line 1874
    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 1871
    or-int v1, v4, v5

    .line 1877
    .local v1, "messageLength":I
    const/4 v2, 0x0

    .line 1878
    move v3, v1

    .line 1880
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1882
    if-gez v0, :cond_3

    .line 1883
    const-string/jumbo v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Hit EOS reading message.  messageLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1884
    const-string/jumbo v6, " remaining="

    .line 1883
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return v7

    .line 1888
    :cond_3
    add-int/2addr v2, v0

    .line 1889
    sub-int/2addr v3, v0

    .line 1890
    if-gtz v3, :cond_2

    .line 1892
    return v1
.end method

.method private requestConnectSIM(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3349
    const/16 v1, 0x7e5

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3351
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3353
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3348
    return-void
.end method

.method private requestDisconnectOrPowerOffSIM(ILandroid/os/Message;)V
    .locals 3
    .param p1, "nAction"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3360
    const/16 v1, 0x7e6

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3362
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3359
    return-void
.end method

.method private requestPowerOnOrResetSIM(IILandroid/os/Message;)V
    .locals 3
    .param p1, "nAction"    # I
    .param p2, "nType"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3373
    const/16 v1, 0x7e7

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3375
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3377
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3380
    const-string/jumbo v2, " nType: "

    .line 3379
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3372
    return-void
.end method

.method private requestTransferApdu(IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "nAction"    # I
    .param p2, "nType"    # I
    .param p3, "strData"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3389
    const/16 v1, 0x7e8

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3391
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3392
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3393
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3394
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3397
    const-string/jumbo v2, " nType: "

    .line 3396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3397
    const-string/jumbo v2, " data: "

    .line 3396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3388
    return-void
.end method

.method private responseCbConfig(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3846
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseCbConfig: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseCrssNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3967
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseCrssNotification: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseEtwsNotification(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3875
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseEtwsNotification: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseGetNitzTime(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4940
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    .line 4943
    .local v3, "result":[Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4944
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 4945
    .local v0, "nitzReceiveTime":J
    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 4946
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 4948
    return-object v3
.end method

.method private responseGetPhbMemStorage(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3547
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseGetPhbMemStorage: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseIratStateChange(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 5105
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseIratStateChange: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseNetworkInfoWithActs(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 4341
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 4344
    .local v7, "strings":[Ljava/lang/String;
    array-length v8, v7

    rem-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_0

    .line 4345
    new-instance v8, Ljava/lang/RuntimeException;

    .line 4346
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RIL_REQUEST_GET_POL_LIST: invalid response. Got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4347
    array-length v10, v7

    .line 4346
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4347
    const-string/jumbo v10, " strings, expected multible of 5"

    .line 4346
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4345
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4350
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v8, v7

    div-int/lit8 v8, v8, 0x4

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4352
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;>;"
    const/4 v5, 0x0

    .line 4353
    .local v5, "strOperName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4354
    .local v6, "strOperNumeric":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4355
    .local v2, "nAct":I
    const/4 v3, 0x0

    .line 4357
    .local v3, "nIndex":I
    const/4 v1, 0x0

    .end local v5    # "strOperName":Ljava/lang/String;
    .end local v6    # "strOperNumeric":Ljava/lang/String;
    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_6

    .line 4358
    const/4 v5, 0x0

    .line 4359
    .restart local v5    # "strOperName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4360
    .restart local v6    # "strOperNumeric":Ljava/lang/String;
    aget-object v8, v7, v1

    if-eqz v8, :cond_3

    .line 4361
    aget-object v8, v7, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4366
    :goto_1
    add-int/lit8 v8, v1, 0x1

    aget-object v8, v7, v8

    if-eqz v8, :cond_1

    .line 4367
    add-int/lit8 v8, v1, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4368
    .local v0, "format":I
    packed-switch v0, :pswitch_data_0

    .line 4384
    .end local v0    # "format":I
    .end local v5    # "strOperName":Ljava/lang/String;
    .end local v6    # "strOperNumeric":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v8, v1, 0x3

    aget-object v8, v7, v8

    if-eqz v8, :cond_4

    .line 4385
    add-int/lit8 v8, v1, 0x3

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4389
    :goto_3
    if-eqz v6, :cond_2

    const-string/jumbo v8, "?????"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4397
    :cond_2
    const-string/jumbo v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseNetworkInfoWithActs: invalid oper. i is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4357
    :goto_4
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 4363
    .restart local v5    # "strOperName":Ljava/lang/String;
    .restart local v6    # "strOperNumeric":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseNetworkInfoWithActs: no invalid index. i is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4371
    .restart local v0    # "format":I
    :pswitch_0
    add-int/lit8 v8, v1, 0x2

    aget-object v5, v7, v8

    .local v5, "strOperName":Ljava/lang/String;
    goto :goto_2

    .line 4374
    .local v5, "strOperName":Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v8, v1, 0x2

    aget-object v8, v7, v8

    if-eqz v8, :cond_1

    .line 4375
    add-int/lit8 v8, v1, 0x2

    aget-object v6, v7, v8

    .line 4376
    .local v6, "strOperNumeric":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v9

    add-int/lit8 v10, v1, 0x2

    aget-object v10, v7, v10

    iget-object v11, p0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v12, v11}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .local v5, "strOperName":Ljava/lang/String;
    goto :goto_2

    .line 4387
    .end local v0    # "format":I
    .end local v5    # "strOperName":Ljava/lang/String;
    .end local v6    # "strOperNumeric":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "responseNetworkInfoWithActs: no invalid Act. i is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4391
    :cond_5
    new-instance v8, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;

    invoke-direct {v8, v5, v6, v2, v3}, Lcom/mediatek/internal/telephony/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 4390
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4401
    :cond_6
    return-object v4

    .line 4368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private responseOperator(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 2771
    const/4 v3, 0x0

    .line 2773
    .local v3, "response":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2775
    .local v3, "response":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 2776
    aget-object v6, v3, v1

    if-eqz v6, :cond_0

    aget-object v6, v3, v1

    const-string/jumbo v7, "uCs2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "responseOperator handling UCS2 format name: response["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2780
    :try_start_0
    new-instance v6, Ljava/lang/String;

    aget-object v7, v3, v1

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string/jumbo v8, "UTF-16"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v6, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2775
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2781
    :catch_0
    move-exception v0

    .line 2782
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v6, "responseOperatorInfos UnsupportedEncodingException"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_1

    .line 2789
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    array-length v6, v3

    if-le v6, v10, :cond_3

    aget-object v6, v3, v10

    if-eqz v6, :cond_3

    .line 2790
    aget-object v6, v3, v9

    if-eqz v6, :cond_3

    aget-object v6, v3, v9

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v3, v9

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2795
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v4

    .line 2796
    .local v4, "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    aget-object v2, v3, v10

    .line 2797
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrierEx(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2798
    .local v5, "temp":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lookup RIL responseOperator() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " gave "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " before."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2799
    aput-object v5, v3, v9

    .line 2800
    aput-object v5, v3, v11

    .line 2804
    .end local v2    # "mccmnc":Ljava/lang/String;
    .end local v4    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_3
    return-object v3

    .line 2797
    .restart local v2    # "mccmnc":Ljava/lang/String;
    .restart local v4    # "spnOverride":Lcom/android/internal/telephony/uicc/SpnOverride;
    :cond_4
    move-object v5, v2

    .restart local v5    # "temp":Ljava/lang/String;
    goto :goto_2
.end method

.method private responsePhbEntries(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3457
    .local v1, "numerOfEntries":I
    new-array v2, v1, [Lcom/android/internal/telephony/PhbEntry;

    .line 3459
    .local v2, "response":[Lcom/android/internal/telephony/PhbEntry;
    const-string/jumbo v3, "RILJ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3462
    new-instance v3, Lcom/android/internal/telephony/PhbEntry;

    invoke-direct {v3}, Lcom/android/internal/telephony/PhbEntry;-><init>()V

    aput-object v3, v2, v0

    .line 3463
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/PhbEntry;->type:I

    .line 3464
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/PhbEntry;->index:I

    .line 3465
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    .line 3466
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/PhbEntry;->ton:I

    .line 3467
    aget-object v3, v2, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    .line 3461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3470
    :cond_0
    return-object v2
.end method

.method private responseReadPhbEntryExt(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3580
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseReadPhbEntryExt: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    const/4 v0, 0x0

    return-object v0
.end method

.method private responseSimSmsMemoryStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3789
    new-instance v0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;-><init>()V

    .line 3790
    .local v0, "response":Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mUsed:I

    .line 3791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/mediatek/internal/telephony/IccSmsStorageStatus;->mTotal:I

    .line 3792
    return-object v0
.end method

.method private responseSmsParams(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3752
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseSmsParams: stub!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    const/4 v0, 0x0

    return-object v0
.end method

.method private setCallIndication([Ljava/lang/String;)V
    .locals 4
    .param p1, "incomingCallInfo"    # [Ljava/lang/String;

    .prologue
    .line 4013
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4014
    .local v0, "callId":I
    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4015
    .local v1, "callMode":I
    const/4 v3, 0x4

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4017
    .local v2, "seqNumber":I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/internal/telephony/MediaTekRIL;->setCallIndication(IIILandroid/os/Message;)V

    .line 4012
    return-void
.end method

.method private setEccList()V
    .locals 7

    .prologue
    .line 4112
    const/16 v5, 0x829

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4113
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getEccList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4115
    .local v0, "eccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/PhoneNumberUtils$EccEntry;>;"
    iget-object v5, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4116
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/PhoneNumberUtils$EccEntry;

    .line 4117
    .local v1, "entry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    iget-object v5, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getEcc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4118
    iget-object v5, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v1}, Landroid/telephony/PhoneNumberUtils$EccEntry;->getCondition()Ljava/lang/String;

    move-result-object v4

    .line 4120
    .local v4, "strCondition":Ljava/lang/String;
    const-string/jumbo v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4121
    const-string/jumbo v4, "0"

    .line 4122
    :cond_0
    iget-object v5, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 4125
    .end local v1    # "entry":Landroid/telephony/PhoneNumberUtils$EccEntry;
    .end local v4    # "strCondition":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4127
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4111
    return-void
.end method


# virtual methods
.method public ReadPhbEntry(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "bIndex"    # I
    .param p3, "eIndex"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3438
    const/16 v1, 0x7de

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3440
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3442
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3443
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3446
    const-string/jumbo v2, " begin: "

    .line 3445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3446
    const-string/jumbo v2, " end: "

    .line 3445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3448
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3437
    return-void
.end method

.method public abortFemtoCellList(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4462
    const/16 v1, 0x81d

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4463
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4464
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4461
    return-void
.end method

.method public acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4169
    const/16 v1, 0x843

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4171
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4172
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 4171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4172
    const-string/jumbo v2, " "

    .line 4171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4174
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4175
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4177
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4168
    return-void
.end method

.method public addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToAdd"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 4195
    const/16 v1, 0x83a

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4197
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4198
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4199
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4200
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4203
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4194
    return-void
.end method

.method public cancelAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2462
    const/16 v1, 0x821

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2465
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2460
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newCfm"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 4258
    const/16 v1, 0x2c

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4260
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4262
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4263
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4264
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4265
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4266
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4267
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4256
    return-void
.end method

.method public conference(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2250
    const/16 v1, 0x10

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2252
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2255
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 2236
    return-void
.end method

.method public conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 9
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 4052
    const/16 v6, 0x84a

    invoke-static {v6, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 4054
    .local v5, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v2, p1

    .line 4061
    .local v2, "numberOfParticipants":I
    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v3, v6, 0x1

    .line 4062
    .local v3, "numberOfStrings":I
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4065
    .local v4, "participantList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "conferenceDial: numberOfParticipants "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4066
    const-string/jumbo v8, "numberOfStrings:"

    .line 4065
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4071
    if-eqz p3, :cond_0

    .line 4072
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4077
    :goto_0
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4079
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dialNumber$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4080
    .local v0, "dialNumber":Ljava/lang/String;
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4082
    const-string/jumbo v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "conferenceDial: dialnumber "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4074
    .end local v0    # "dialNumber":Ljava/lang/String;
    .end local v1    # "dialNumber$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 4085
    .restart local v1    # "dialNumber$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v6, v5, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4087
    const-string/jumbo v6, "RILJ"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "conferenceDial: clirMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v7}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4094
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4051
    return-void
.end method

.method public configEvdoMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "evdoMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 5040
    const/16 v1, 0xfb6

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5043
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5044
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5048
    const-string/jumbo v2, " "

    .line 5047
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5051
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5039
    return-void
.end method

.method public configModemStatus(IILandroid/os/Message;)V
    .locals 3
    .param p1, "modemStatus"    # I
    .param p2, "remoteSimProtocol"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 5021
    const/16 v1, 0x845

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5024
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5025
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5026
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5030
    const-string/jumbo v2, " "

    .line 5029
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5030
    const-string/jumbo v2, ", "

    .line 5029
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5033
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5020
    return-void
.end method

.method public confirmIratChange(ILandroid/os/Message;)V
    .locals 3
    .param p1, "apDecision"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5058
    const/16 v1, 0x847

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5060
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5061
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5065
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5057
    return-void
.end method

.method public connectRilSocket()V
    .locals 1

    .prologue
    .line 2096
    const-string/jumbo v0, "[RIL SWITCH]reconnectRilSocket()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2098
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiverThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    if-nez v0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/android/internal/telephony/MediaTekRIL;->connectRild()V

    .line 2094
    :goto_0
    return-void

    .line 2102
    :cond_0
    const-string/jumbo v0, "[RIL SWITCH] Already connected, abort connect request."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected createRILReceiver()Lcom/android/internal/telephony/RIL$RILReceiver;
    .locals 1

    .prologue
    .line 1896
    new-instance v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;-><init>(Lcom/android/internal/telephony/MediaTekRIL;)V

    return-object v0
.end method

.method public deleteUPBEntry(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3501
    const/16 v1, 0x7f5

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3502
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3503
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3504
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3505
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3507
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3500
    return-void
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 2208
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2209
    const/16 v1, 0x83c

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2211
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2214
    return-void

    .line 2217
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    .line 2207
    return-void
.end method

.method public disconnectRilSocket()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2110
    const-string/jumbo v2, "[RIL SWITCH]disconnectRilSocket()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2112
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mSenderThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    .line 2113
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mSenderThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 2114
    iput-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mSenderThread:Landroid/os/HandlerThread;

    .line 2116
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    if-eqz v2, :cond_1

    .line 2117
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    instance-of v2, v2, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;

    if-eqz v2, :cond_1

    .line 2118
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    check-cast v2, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->mStoped:Z

    .line 2123
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_2

    .line 2124
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 2126
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiverThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 2127
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiverThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2128
    const-string/jumbo v2, "[RIL SWITCH]mReceiverThread.isAlive() = true;"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2129
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v1

    .line 2138
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[RIL SWITCH]IOException ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2108
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    return-void

    .line 2132
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiverThread:Ljava/lang/Thread;

    .line 2133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mReceiver:Lcom/android/internal/telephony/RIL$RILReceiver;

    .line 2135
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRilVersion:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2140
    :catch_1
    move-exception v0

    .line 2142
    .local v0, "er":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[RIL SWITCH]InterruptedException er = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "mode"    # I
    .param p3, "tag"    # I
    .param p4, "param1"    # Ljava/lang/String;
    .param p5, "param2"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 3257
    const/16 v2, 0x82a

    invoke-static {v2, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3259
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3260
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3263
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 3264
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 3265
    .local v0, "length":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    const-string/jumbo v2, "0"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3268
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-nez p1, :cond_2

    move-object v2, p4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3274
    .end local v0    # "length":Ljava/lang/String;
    :goto_2
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 3275
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 3276
    .restart local v0    # "length":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_4

    const-string/jumbo v2, "0"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3279
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-nez p1, :cond_5

    move-object v2, p5

    :goto_4
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3284
    .end local v0    # "length":Ljava/lang/String;
    :goto_5
    if-ne p2, v4, :cond_0

    .line 3285
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3290
    const-string/jumbo v3, "session = "

    .line 3289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3290
    const-string/jumbo v3, ",mode = "

    .line 3289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3290
    const-string/jumbo v3, ",tag = "

    .line 3289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3290
    const-string/jumbo v3, ", "

    .line 3289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3290
    const-string/jumbo v3, ", "

    .line 3289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3255
    return-void

    .line 3265
    .restart local v0    # "length":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, ""

    goto/16 :goto_0

    .line 3268
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 3270
    .end local v0    # "length":Ljava/lang/String;
    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3276
    .restart local v0    # "length":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    goto/16 :goto_3

    .line 3279
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 3281
    .end local v0    # "length":Ljava/lang/String;
    :cond_6
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "entryType"    # I
    .param p2, "adnIndex"    # I
    .param p3, "entryIndex"    # I
    .param p4, "strVal"    # Ljava/lang/String;
    .param p5, "tonForNum"    # Ljava/lang/String;
    .param p6, "response"    # Landroid/os/Message;

    .prologue
    .line 3480
    const/16 v1, 0x7f4

    invoke-static {v1, p6}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3481
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez p1, :cond_1

    .line 3482
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3486
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3487
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3488
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3489
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3491
    if-nez p1, :cond_0

    .line 3492
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3495
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3496
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3479
    return-void

    .line 3484
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 4022
    const/16 v1, 0x827

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4024
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4025
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4026
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4028
    if-nez p3, :cond_0

    .line 4029
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4037
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4021
    return-void

    .line 4031
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4032
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4033
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public enableMd3Sleep(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    .line 5304
    const/16 v1, 0x854

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5305
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5306
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5309
    const-string/jumbo v2, "> "

    .line 5308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5309
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 5308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5309
    const-string/jumbo v2, " enable MD3 sleep: "

    .line 5308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5303
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2280
    const/16 v1, 0x48

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2282
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2285
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 2278
    return-void
.end method

.method public forceReleaseCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3985
    const/16 v1, 0x825

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3987
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3988
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3991
    const-string/jumbo v2, " "

    .line 3990
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3993
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3983
    return-void
.end method

.method public getAtr(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3181
    const-string/jumbo v0, "getAtr: using MTK impl"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3182
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->iccGetATR(Landroid/os/Message;)V

    .line 3180
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2451
    const/16 v1, 0x82f

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2454
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2456
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2449
    return-void
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4787
    const/16 v1, 0xfa4

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4790
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4793
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4785
    return-void
.end method

.method public getCOLP(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2405
    const/16 v1, 0x7d0

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2407
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2402
    return-void
.end method

.method public getCOLR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2439
    const/16 v1, 0x7d2

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2441
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2436
    return-void
.end method

.method public getCurrentPOLList(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4428
    const/16 v1, 0x7f1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4429
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4430
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4427
    return-void
.end method

.method public getDisplayState()I
    .locals 1

    .prologue
    .line 5205
    iget v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDefaultDisplayState:I

    return v0
.end method

.method public getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "rat"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 4451
    const/16 v1, 0x81c

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4454
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4455
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4456
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4457
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4458
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4449
    return-void
.end method

.method public getIccApplicationStatus(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3202
    const/16 v1, 0x82c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3204
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3205
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3208
    const-string/jumbo v2, ", session = "

    .line 3207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3209
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3199
    return-void
.end method

.method public getNitzTime(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4745
    const/16 v1, 0xfa0

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4748
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4751
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4743
    return-void
.end method

.method public getOplmnVersion(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4822
    const/16 v1, 0x820

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4825
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4827
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4821
    return-void
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4422
    const/16 v1, 0x7f0

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4423
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4424
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4421
    return-void
.end method

.method public getPhoneBookMemStorage(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3671
    const/16 v1, 0x7ff

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3673
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3670
    return-void
.end method

.method public getPhoneBookStringsLength(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3659
    const/16 v1, 0x7fe

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3661
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3663
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3658
    return-void
.end method

.method public getSmsParameters(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3735
    const/16 v1, 0x803

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3737
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3739
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3734
    return-void
.end method

.method public getSmsSimMemoryStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3779
    const/16 v1, 0x7ed

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3781
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3783
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3778
    return-void
.end method

.method public getUtkLocalInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4954
    const/16 v1, 0xfa6

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4957
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4960
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4953
    return-void
.end method

.method public handleCallSetupRequestFromSim(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "accept"    # Z
    .param p2, "resCode"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2509
    const/16 v4, 0x47

    .line 2508
    invoke-static {v4, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 2512
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2514
    new-array v0, v2, [I

    .line 2515
    .local v0, "param":[I
    const/16 v4, 0x21

    if-eq p2, v4, :cond_0

    const/16 v4, 0x20

    if-ne p2, v4, :cond_1

    .line 2516
    :cond_0
    aput p2, v0, v3

    .line 2520
    :goto_0
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2521
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2506
    return-void

    .line 2518
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    aput v2, v0, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public handleCallSetupRequestFromUim(ZLandroid/os/Message;)V
    .locals 5
    .param p1, "accept"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5003
    const/16 v1, 0x47

    .line 5002
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5006
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5007
    iget-object v4, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5011
    const-string/jumbo v4, " "

    .line 5010
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5011
    if-eqz p1, :cond_1

    .line 5010
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5014
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5001
    return-void

    :cond_0
    move v1, v3

    .line 5007
    goto :goto_0

    :cond_1
    move v2, v3

    .line 5011
    goto :goto_1
.end method

.method public hangupAll(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3975
    const/16 v1, 0x824

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3978
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3980
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3974
    return-void
.end method

.method public holdCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "callIdToHold"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4241
    const/16 v1, 0x84e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4243
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4244
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4249
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4240
    return-void
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 3298
    const/16 v1, 0x807

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3300
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3297
    return-void
.end method

.method public iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3307
    const/16 v1, 0x80f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3309
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> iccOpenChannelWithSw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3312
    const-string/jumbo v2, " "

    .line 3311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3306
    return-void
.end method

.method public isGettingAvailableNetworks()Z
    .locals 6

    .prologue
    .line 4553
    iget-object v4, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v4

    .line 4554
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 4555
    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 4556
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v1, :cond_1

    .line 4557
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    .line 4558
    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x82f

    if-ne v3, v5, :cond_1

    .line 4559
    :cond_0
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 4554
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    monitor-exit v4

    .line 4564
    const/4 v3, 0x0

    return v3

    .line 4553
    .end local v2    # "s":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # J
    .param p3, "numeric"    # Ljava/lang/String;
    .param p4, "desireLongName"    # Z

    .prologue
    .line 4292
    long-to-int v5, p1

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 4293
    .local v4, "phoneId":I
    const/4 v3, 0x0

    .line 4294
    .local v3, "nitzOperatorNumeric":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4296
    .local v1, "nitzOperatorName":Ljava/lang/String;
    const-string/jumbo v5, "persist.radio.nitz_oper_code"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4297
    .local v3, "nitzOperatorNumeric":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4298
    if-eqz p4, :cond_1

    .line 4299
    const-string/jumbo v5, "persist.radio.nitz_oper_lname"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "nitzOperatorName":Ljava/lang/String;
    move-object v2, v1

    .line 4306
    .end local v1    # "nitzOperatorName":Ljava/lang/String;
    .local v2, "nitzOperatorName":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v5, "uCs2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4308
    const-string/jumbo v5, "lookupOperatorNameFromNetwork handling UCS2 format name"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4310
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "UTF-16"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4316
    .end local v2    # "nitzOperatorName":Ljava/lang/String;
    .restart local v1    # "nitzOperatorName":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lookupOperatorNameFromNetwork numeric= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",subId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",nitzOperatorNumeric= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",nitzOperatorName= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4318
    return-object v1

    .local v1, "nitzOperatorName":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 4297
    .restart local v2    # "nitzOperatorName":Ljava/lang/String;
    goto :goto_0

    .line 4301
    .end local v2    # "nitzOperatorName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "persist.radio.nitz_oper_sname"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "nitzOperatorName":Ljava/lang/String;
    move-object v2, v1

    .end local v1    # "nitzOperatorName":Ljava/lang/String;
    .restart local v2    # "nitzOperatorName":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 4307
    .end local v2    # "nitzOperatorName":Ljava/lang/String;
    .restart local v1    # "nitzOperatorName":Ljava/lang/String;
    goto :goto_1

    .line 4311
    .end local v1    # "nitzOperatorName":Ljava/lang/String;
    .restart local v2    # "nitzOperatorName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4312
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "lookupOperatorNameFromNetwork UnsupportedEncodingException"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    move-object v1, v2

    .end local v2    # "nitzOperatorName":Ljava/lang/String;
    .restart local v1    # "nitzOperatorName":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .local v1, "nitzOperatorName":Ljava/lang/String;
    :cond_3
    move-object v2, v1

    .restart local v2    # "nitzOperatorName":Ljava/lang/String;
    goto :goto_0
.end method

.method public openIccApplication(ILandroid/os/Message;)V
    .locals 3
    .param p1, "application"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3188
    const/16 v1, 0x82b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3190
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3191
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3194
    const-string/jumbo v2, ", application = "

    .line 3193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3195
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3187
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 190
    const/4 v9, 0x0

    .line 192
    .local v9, "found":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 193
    .local v12, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .local v0, "error":I
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/MediaTekRIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    .line 199
    .local v10, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v10, :cond_0

    .line 200
    const-string/jumbo v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected solicited response! sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    const-string/jumbo v4, " error: "

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v6

    .line 207
    :cond_0
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_1

    .line 208
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->remove(Lcom/android/internal/telephony/RILRequest;)V

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove first item in dtmf queue done, size = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v2

    if-lez v2, :cond_d

    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->get()Lcom/android/internal/telephony/RILRequest;

    move-result-object v11

    .line 214
    .local v11, "rr2":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v11, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v11    # "rr2":Lcom/android/internal/telephony/RILRequest;
    :cond_2
    :goto_0
    monitor-exit v3

    .line 227
    :cond_3
    const/4 v1, 0x0

    .line 229
    .local v1, "ret":Ljava/lang/Object;
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    .line 230
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x82f

    if-ne v2, v3, :cond_5

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mGetAvailableNetworkDoneRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 235
    :cond_5
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x49

    if-ne v2, v3, :cond_7

    .line 236
    if-eqz v0, :cond_6

    iget v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    if-eq v2, v7, :cond_6

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore mPreferredNetworkType from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreferredNetworkType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 238
    iget v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    iput v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreferredNetworkType:I

    .line 240
    :cond_6
    iput v7, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    .line 245
    :cond_7
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_8

    .line 246
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_e

    .line 249
    :cond_8
    :goto_1
    const-string/jumbo v2, "clear mIsSendChldRequest"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->resetSendChldRequest()V

    .line 254
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_f

    .line 257
    :cond_a
    const-string/jumbo v2, "ro.cm.device"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "e73"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 258
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0xdc

    if-ne v2, v3, :cond_b

    .line 259
    const/16 v2, 0x33

    iput v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 263
    :cond_b
    :try_start_1
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v2, :sswitch_data_0

    .line 590
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized solicited response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 592
    :catch_0
    move-exception v13

    .line 595
    .local v13, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "RILJ"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 596
    iget v4, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 597
    const-string/jumbo v4, " exception, possible invalid RIL response"

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_c

    .line 600
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v6, v13}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 601
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 603
    :cond_c
    return-object v10

    .line 217
    .end local v1    # "ret":Ljava/lang/Object;
    .end local v13    # "tr":Ljava/lang/Throwable;
    :cond_d
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    const-string/jumbo v2, "send pending switch request"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->setSendChldRequest()V

    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->setPendingRequest(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 209
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 247
    .restart local v1    # "ret":Ljava/lang/Object;
    :cond_e
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x34

    if-eq v2, v3, :cond_8

    .line 248
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x48

    if-ne v2, v3, :cond_9

    goto/16 :goto_1

    .line 269
    :sswitch_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 607
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_f
    :goto_2
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v3, 0x81

    if-ne v2, v3, :cond_10

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Response to RIL_REQUEST_SHUTDOWN received. Error is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 611
    const-string/jumbo v3, " Setting Radio State to Unavailable regardless of error."

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 612
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 618
    :cond_10
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    packed-switch v2, :pswitch_data_0

    .line 631
    :cond_11
    :goto_3
    :pswitch_0
    if-eqz v0, :cond_16

    .line 632
    iget v2, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v2, :sswitch_data_1

    .line 666
    :cond_12
    :goto_4
    invoke-virtual {v10, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 667
    return-object v10

    .line 270
    .restart local v1    # "ret":Ljava/lang/Object;
    :sswitch_1
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 271
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 272
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 273
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 274
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 275
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 276
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 277
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 278
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 279
    :sswitch_a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 280
    :sswitch_b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 281
    :sswitch_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 283
    :sswitch_d
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 284
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_13

    .line 285
    const-string/jumbo v2, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 289
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 292
    :sswitch_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 293
    :sswitch_f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 294
    :sswitch_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 295
    :sswitch_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 296
    :sswitch_12
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSignalStrength(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 297
    :sswitch_13
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 298
    :sswitch_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 299
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseOperator(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 300
    :sswitch_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 301
    :sswitch_17
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 302
    :sswitch_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 303
    :sswitch_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 304
    :sswitch_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 305
    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 306
    :sswitch_1c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 307
    :sswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 308
    :sswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 309
    :sswitch_1f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 310
    :sswitch_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCallForward(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 311
    :sswitch_21
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 312
    :sswitch_22
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 313
    :sswitch_23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 314
    :sswitch_24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 315
    :sswitch_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 316
    :sswitch_26
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 317
    :sswitch_27
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 318
    :sswitch_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 319
    :sswitch_29
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 320
    :sswitch_2a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 321
    :sswitch_2b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 322
    :sswitch_2c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 323
    :sswitch_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 324
    :sswitch_2e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 325
    :sswitch_2f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseOperatorInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 326
    :sswitch_30
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 327
    :sswitch_31
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 328
    :sswitch_32
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 329
    :sswitch_33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 330
    :sswitch_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 331
    :sswitch_35
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 332
    :sswitch_36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 333
    :sswitch_37
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 334
    :sswitch_38
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 335
    :sswitch_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseDataCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 336
    :sswitch_3a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 337
    :sswitch_3b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseRaw(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 338
    :sswitch_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 339
    :sswitch_3d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 340
    :sswitch_3e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 341
    :sswitch_3f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 342
    :sswitch_40
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 343
    :sswitch_41
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 344
    :sswitch_42
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 345
    :sswitch_43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 346
    :sswitch_44
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 347
    :sswitch_45
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 348
    :sswitch_46
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 349
    :sswitch_47
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 350
    :sswitch_48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 351
    :sswitch_49
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 352
    :sswitch_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseGetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 353
    :sswitch_4b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 354
    :sswitch_4c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 355
    :sswitch_4d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 356
    :sswitch_4e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 357
    :sswitch_4f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 358
    :sswitch_50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 359
    :sswitch_51
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 360
    :sswitch_52
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 361
    :sswitch_53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 362
    :sswitch_54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 363
    :sswitch_55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 364
    :sswitch_56
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 365
    :sswitch_57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 366
    :sswitch_58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseGmsBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 367
    :sswitch_59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 368
    :sswitch_5a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 369
    :sswitch_5b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCdmaBroadcastConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 370
    :sswitch_5c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 371
    :sswitch_5d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 372
    :sswitch_5e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 373
    :sswitch_5f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 375
    :sswitch_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 376
    :sswitch_61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 377
    :sswitch_62
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 378
    :sswitch_63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 379
    :sswitch_64
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 380
    :sswitch_65
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 381
    :sswitch_66
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 382
    :sswitch_67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 383
    :sswitch_68
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 385
    :sswitch_69
    const-string/jumbo v2, "ro.mtk_tc1_feature"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStringEncodeBase64(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 388
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 390
    :sswitch_6a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 391
    :sswitch_6b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 392
    :sswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 393
    :sswitch_6d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCellInfoList(Landroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_2

    .line 394
    :sswitch_6e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 395
    :sswitch_6f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 396
    :sswitch_70
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 397
    :sswitch_71
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 398
    :sswitch_72
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSMS(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 399
    :sswitch_73
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 400
    :sswitch_74
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 401
    :sswitch_75
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 402
    :sswitch_76
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 403
    :sswitch_77
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 404
    :sswitch_78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 405
    :sswitch_79
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 406
    :sswitch_7a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 407
    :sswitch_7b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 408
    :sswitch_7c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 409
    :sswitch_7d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 410
    :sswitch_7e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IOBase64(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 411
    :sswitch_7f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 412
    :sswitch_80
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 413
    :sswitch_81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 415
    :sswitch_82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 416
    :sswitch_83
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 417
    :sswitch_84
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 418
    :sswitch_85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 419
    :sswitch_86
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 420
    :sswitch_87
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 423
    :sswitch_88
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 426
    :sswitch_89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 427
    :sswitch_8a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 428
    :sswitch_8b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 431
    :sswitch_8c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 432
    :sswitch_8d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 433
    :sswitch_8e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 434
    :sswitch_8f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 435
    :sswitch_90
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 439
    :sswitch_91
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 440
    :sswitch_92
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 441
    :sswitch_93
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 445
    :sswitch_94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 446
    :sswitch_95
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 449
    :sswitch_96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 450
    :sswitch_97
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 451
    :sswitch_98
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 453
    :sswitch_99
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseICC_IO(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 455
    :sswitch_9a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 456
    :sswitch_9b
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 457
    :sswitch_9c
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responsePhbEntries(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 458
    :sswitch_9d
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 459
    :sswitch_9e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 460
    :sswitch_9f
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 461
    :sswitch_a0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 462
    :sswitch_a1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 463
    :sswitch_a2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 464
    :sswitch_a3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 465
    :sswitch_a4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseGetPhbMemStorage(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 466
    :sswitch_a5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 467
    :sswitch_a6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseReadPhbEntryExt(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 468
    :sswitch_a7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 473
    :sswitch_a8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 474
    :sswitch_a9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 475
    :sswitch_aa
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseNetworkInfoWithActs(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 476
    :sswitch_ab
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 477
    :sswitch_ac
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 478
    :sswitch_ad
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseOperatorInfosWithAct(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 479
    :sswitch_ae
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 482
    :sswitch_af
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseFemtoCellInfos(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 483
    :sswitch_b0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 484
    :sswitch_b1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 488
    :sswitch_b2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 489
    :sswitch_b3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 492
    :sswitch_b4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 493
    :sswitch_b5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 495
    :sswitch_b6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 496
    :sswitch_b7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 499
    :sswitch_b8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSmsParams(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 500
    :sswitch_b9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 501
    :sswitch_ba
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSimSmsMemoryStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 502
    :sswitch_bb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 503
    :sswitch_bc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 504
    :sswitch_bd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 505
    :sswitch_be
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCbConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 506
    :sswitch_bf
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 508
    :sswitch_c0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 511
    :sswitch_c1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 514
    :sswitch_c2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 515
    :sswitch_c3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 517
    :sswitch_c4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 518
    :sswitch_c5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 519
    :sswitch_c6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 520
    :sswitch_c7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 523
    :sswitch_c8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 525
    :sswitch_c9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 527
    :sswitch_ca
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 531
    :sswitch_cb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 532
    :sswitch_cc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 536
    :sswitch_cd
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseGetNitzTime(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 537
    :sswitch_ce
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 538
    :sswitch_cf
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 539
    :sswitch_d0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 540
    :sswitch_d1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 541
    :sswitch_d2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 542
    :sswitch_d3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 543
    :sswitch_d4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 544
    :sswitch_d5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 545
    :sswitch_d6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 546
    :sswitch_d7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 547
    :sswitch_d8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 548
    :sswitch_d9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 549
    :sswitch_da
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 550
    :sswitch_db
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 551
    :sswitch_dc
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 552
    :sswitch_dd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 553
    :sswitch_de
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 554
    :sswitch_df
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 555
    :sswitch_e0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 556
    :sswitch_e1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 557
    :sswitch_e2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 558
    :sswitch_e3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 559
    :sswitch_e4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 562
    :sswitch_e5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 563
    :sswitch_e6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 566
    :sswitch_e7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 570
    :sswitch_e8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 571
    :sswitch_e9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 572
    :sswitch_ea
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 573
    :sswitch_eb
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 575
    :sswitch_ec
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 577
    :sswitch_ed
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 578
    :sswitch_ee
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 579
    :sswitch_ef
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseLceStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 580
    :sswitch_f0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 581
    :sswitch_f1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseActivityData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 582
    :sswitch_f2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 583
    :sswitch_f3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 586
    :sswitch_f4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 587
    :sswitch_f5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    goto/16 :goto_2

    .line 621
    .end local v1    # "ret":Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_11

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 624
    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    .line 623
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_3

    .line 638
    :sswitch_f6
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_12

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 641
    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->size()I

    move-result v3

    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 643
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mIccStatusChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_4

    .line 650
    :sswitch_f7
    const/4 v2, 0x6

    if-eq v2, v0, :cond_15

    .line 651
    const/4 v2, 0x2

    if-ne v2, v0, :cond_12

    .line 654
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/MediaTekRIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    .line 655
    .restart local v1    # "ret":Ljava/lang/Object;
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 660
    .end local v1    # "ret":Ljava/lang/Object;
    :sswitch_f8
    new-instance v1, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v2, 0x0

    .line 661
    const/4 v5, 0x5

    new-array v6, v5, [I

    move v5, v4

    move v7, v4

    move v8, v4

    .line 660
    invoke-direct/range {v1 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[III)V

    .line 662
    .restart local v1    # "ret":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 663
    goto/16 :goto_4

    .line 670
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 671
    const-string/jumbo v3, " "

    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 671
    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3, v1}, Lcom/android/internal/telephony/MediaTekRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 673
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v2, :cond_17

    .line 674
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 675
    iget-object v2, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 678
    :cond_17
    return-object v10

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_13
        0x15 -> :sswitch_14
        0x16 -> :sswitch_15
        0x17 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1a -> :sswitch_19
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
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
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_5e
        0x57 -> :sswitch_56
        0x58 -> :sswitch_57
        0x59 -> :sswitch_58
        0x5a -> :sswitch_59
        0x5b -> :sswitch_5a
        0x5c -> :sswitch_5b
        0x5d -> :sswitch_5c
        0x5e -> :sswitch_5d
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_65
        0x64 -> :sswitch_63
        0x65 -> :sswitch_64
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_71
        0x71 -> :sswitch_72
        0x72 -> :sswitch_73
        0x73 -> :sswitch_74
        0x74 -> :sswitch_75
        0x75 -> :sswitch_76
        0x76 -> :sswitch_77
        0x77 -> :sswitch_78
        0x78 -> :sswitch_79
        0x79 -> :sswitch_7a
        0x7a -> :sswitch_7b
        0x7b -> :sswitch_7c
        0x7c -> :sswitch_7d
        0x7d -> :sswitch_7e
        0x80 -> :sswitch_70
        0x81 -> :sswitch_7f
        0x82 -> :sswitch_80
        0x83 -> :sswitch_81
        0x84 -> :sswitch_ee
        0x85 -> :sswitch_ef
        0x86 -> :sswitch_f0
        0x87 -> :sswitch_f1
        0x7d0 -> :sswitch_91
        0x7d1 -> :sswitch_92
        0x7d2 -> :sswitch_93
        0x7da -> :sswitch_e6
        0x7dc -> :sswitch_9a
        0x7dd -> :sswitch_9b
        0x7de -> :sswitch_9c
        0x7e2 -> :sswitch_94
        0x7e3 -> :sswitch_95
        0x7e4 -> :sswitch_b6
        0x7e5 -> :sswitch_c4
        0x7e6 -> :sswitch_c5
        0x7e7 -> :sswitch_c6
        0x7e8 -> :sswitch_c7
        0x7e9 -> :sswitch_a8
        0x7ec -> :sswitch_e5
        0x7ed -> :sswitch_ba
        0x7f0 -> :sswitch_a9
        0x7f1 -> :sswitch_aa
        0x7f2 -> :sswitch_ab
        0x7f3 -> :sswitch_9d
        0x7f4 -> :sswitch_a0
        0x7f5 -> :sswitch_a1
        0x7f6 -> :sswitch_a2
        0x7f7 -> :sswitch_9e
        0x7f8 -> :sswitch_9f
        0x7fb -> :sswitch_ac
        0x7fe -> :sswitch_a3
        0x7ff -> :sswitch_a4
        0x800 -> :sswitch_a5
        0x801 -> :sswitch_a6
        0x802 -> :sswitch_a7
        0x803 -> :sswitch_b8
        0x804 -> :sswitch_b9
        0x807 -> :sswitch_b5
        0x808 -> :sswitch_bc
        0x809 -> :sswitch_bd
        0x80a -> :sswitch_be
        0x80c -> :sswitch_bb
        0x80d -> :sswitch_b7
        0x810 -> :sswitch_e8
        0x811 -> :sswitch_e9
        0x812 -> :sswitch_b3
        0x813 -> :sswitch_b2
        0x81b -> :sswitch_ae
        0x81c -> :sswitch_af
        0x81d -> :sswitch_b0
        0x81e -> :sswitch_b1
        0x821 -> :sswitch_30
        0x824 -> :sswitch_82
        0x825 -> :sswitch_83
        0x826 -> :sswitch_84
        0x827 -> :sswitch_85
        0x828 -> :sswitch_86
        0x829 -> :sswitch_87
        0x82a -> :sswitch_96
        0x82b -> :sswitch_97
        0x82c -> :sswitch_98
        0x82d -> :sswitch_99
        0x82e -> :sswitch_b4
        0x82f -> :sswitch_ad
        0x838 -> :sswitch_bf
        0x839 -> :sswitch_c0
        0x83a -> :sswitch_8c
        0x83b -> :sswitch_8d
        0x83c -> :sswitch_8e
        0x83d -> :sswitch_8f
        0x83e -> :sswitch_88
        0x83f -> :sswitch_c2
        0x840 -> :sswitch_c3
        0x841 -> :sswitch_ca
        0x842 -> :sswitch_89
        0x843 -> :sswitch_8a
        0x844 -> :sswitch_8b
        0x845 -> :sswitch_c1
        0x846 -> :sswitch_df
        0x847 -> :sswitch_e0
        0x848 -> :sswitch_e7
        0x84a -> :sswitch_c8
        0x84b -> :sswitch_cb
        0x84c -> :sswitch_cc
        0x84d -> :sswitch_c9
        0x84e -> :sswitch_90
        0x84f -> :sswitch_ec
        0x850 -> :sswitch_ed
        0x851 -> :sswitch_e4
        0x853 -> :sswitch_f2
        0x854 -> :sswitch_f3
        0x856 -> :sswitch_f4
        0x857 -> :sswitch_f5
        0xfa0 -> :sswitch_cd
        0xfa1 -> :sswitch_ce
        0xfa2 -> :sswitch_cf
        0xfa3 -> :sswitch_d0
        0xfa4 -> :sswitch_d1
        0xfa5 -> :sswitch_d2
        0xfa6 -> :sswitch_d3
        0xfa7 -> :sswitch_d4
        0xfa8 -> :sswitch_d5
        0xfa9 -> :sswitch_d6
        0xfaa -> :sswitch_d7
        0xfab -> :sswitch_d8
        0xfac -> :sswitch_d9
        0xfad -> :sswitch_da
        0xfae -> :sswitch_eb
        0xfaf -> :sswitch_ea
        0xfb0 -> :sswitch_db
        0xfb1 -> :sswitch_dc
        0xfb2 -> :sswitch_dd
        0xfb3 -> :sswitch_de
        0xfb6 -> :sswitch_e1
        0xfb7 -> :sswitch_e2
        0xfb8 -> :sswitch_e3
    .end sparse-switch

    .line 618
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 632
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_f6
        0x4 -> :sswitch_f6
        0x6 -> :sswitch_f6
        0x7 -> :sswitch_f6
        0x2b -> :sswitch_f6
        0x82 -> :sswitch_f7
        0x87 -> :sswitch_f8
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 36
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    .line 686
    .local v9, "dataPosition":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 688
    .local v21, "response":I
    sparse-switch v21, :sswitch_data_0

    .line 850
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 853
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 854
    return-void

    .line 694
    :sswitch_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .line 859
    .local v22, "ret":Ljava/lang/Object;
    :goto_0
    const/16 v23, 0x0

    .line 860
    .local v23, "rewindAndReplace":Z
    const/16 v17, 0x0

    .line 862
    .local v17, "newResponseCode":I
    sparse-switch v21, :sswitch_data_1

    .line 1782
    const-string/jumbo v31, "RILJ"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Unprocessed unsolicited known MTK response: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    .end local v22    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v23, :cond_1

    .line 1786
    const-string/jumbo v31, "RILJ"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Rewriting MTK unsolicited response "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1790
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1795
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 683
    :cond_1
    return-void

    .line 695
    .end local v17    # "newResponseCode":I
    .end local v23    # "rewindAndReplace":Z
    :sswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 697
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 698
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 699
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 700
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 701
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 702
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 703
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 704
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 705
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 706
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 707
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 709
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 710
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 711
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseHardwareConfig(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 713
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseRadioCapability(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 714
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseSsData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 715
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_12
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 716
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_13
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseLceData(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 718
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 719
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseCrssNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 720
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_16
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 721
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_17
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 725
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_18
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 728
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_19
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 730
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 731
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 732
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_1c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 733
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_1d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 734
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 735
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_1f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 736
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_20
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 737
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_21
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 738
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_22
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 739
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_23
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 740
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_24
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 742
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 743
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_26
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 744
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_27
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 746
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 748
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_29
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 749
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 751
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 753
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 757
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 759
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 761
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_2f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 764
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_30
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 765
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_31
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 767
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_32
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 768
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_33
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 771
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_34
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 774
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_35
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 775
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_36
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 778
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_37
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 782
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_38
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 783
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_39
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 784
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 785
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 786
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 787
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 788
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 790
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_3f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 791
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_40
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 794
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_41
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .line 795
    .restart local v22    # "ret":Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    goto/16 :goto_0

    .line 800
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_42
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 804
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_43
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 807
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_44
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 811
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_45
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 813
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_46
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 815
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_47
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseEtwsNotification(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 819
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_48
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 823
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_49
    const-string/jumbo v31, " RIL_UNSOL_INTER_3GPP_IRAT_STATE_CHANGE..."

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 824
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseIratStateChange(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 827
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4a
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 828
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4b
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 830
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4c
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 832
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4d
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 834
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4e
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 836
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_4f
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 839
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_50
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 841
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_51
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 842
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_52
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 846
    .end local v22    # "ret":Ljava/lang/Object;
    :sswitch_53
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .restart local v22    # "ret":Ljava/lang/Object;
    goto/16 :goto_0

    .line 910
    .restart local v17    # "newResponseCode":I
    .restart local v23    # "rewindAndReplace":Z
    :sswitch_54
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mIccSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 917
    :cond_2
    const-string/jumbo v31, "RILJ"

    const-string/jumbo v32, "Cache sim sms full event"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mIsSmsSimFull:Z

    goto/16 :goto_1

    .line 924
    :sswitch_55
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 927
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v31

    sget-object v32, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_3

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_4

    .line 929
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/MediaTekRIL;->setEccList()V

    .line 935
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaSubscription:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->setCdmaSubscriptionSource(ILandroid/os/Message;)V

    .line 936
    const v31, 0x7fffffff

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->setCellInfoListRate(ILandroid/os/Message;)V

    .line 937
    check-cast v22, [I

    .end local v22    # "ret":Ljava/lang/Object;
    const/16 v31, 0x0

    aget v31, v22, v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDefaultDisplayState:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 942
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->sendScreenState(Z)V

    goto/16 :goto_1

    .line 943
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDefaultDisplayState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 944
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->sendScreenState(Z)V

    goto/16 :goto_1

    .line 946
    :cond_6
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "not setScreenState mDefaultDisplayState="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    .line 947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDefaultDisplayState:I

    move/from16 v32, v0

    .line 946
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 954
    .restart local v22    # "ret":Ljava/lang/Object;
    :sswitch_56
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNeighboringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 957
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 956
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 962
    :sswitch_57
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 964
    if-eqz v22, :cond_9

    move-object/from16 v16, v22

    .line 965
    check-cast v16, [Ljava/lang/String;

    .line 966
    .local v16, "networkinfo":[Ljava/lang/String;
    const/16 v31, 0x0

    aget-object v31, v16, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 971
    .local v30, "type":I
    const/16 v31, 0x191

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    const/16 v31, 0x192

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 972
    :cond_7
    new-instance v14, Landroid/content/Intent;

    .line 973
    const-string/jumbo v31, "com.mediatek.log2server.EXCEPTION_HAPPEND"

    .line 972
    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 974
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v31, "Reason"

    const-string/jumbo v32, "SmartLogging"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string/jumbo v31, "from_where"

    const-string/jumbo v32, "RIL"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 977
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Broadcast for SmartLogging "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 971
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_8
    const/16 v31, 0x193

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 982
    .end local v16    # "networkinfo":[Ljava/lang/String;
    .end local v30    # "type":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNetworkInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 984
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 983
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 990
    :sswitch_58
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNetworkExistRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNetworkExistRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 994
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 993
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 999
    :sswitch_59
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mHardwareConfigChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1003
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1002
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1008
    :sswitch_5a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    move-object/from16 v31, v22

    .line 1009
    check-cast v31, Lcom/android/internal/telephony/RadioCapability;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mRadioCapability:Lcom/android/internal/telephony/RadioCapability;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPhoneRadioCapabilityChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1012
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1011
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1016
    :sswitch_5b
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSsRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1020
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1019
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1024
    :sswitch_5c
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCatCcAlphaRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1028
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1027
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1032
    :sswitch_5d
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mLceInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1040
    :sswitch_5e
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v31, v22

    .line 1042
    check-cast v31, [I

    const/16 v32, 0x0

    aget v31, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    const/4 v5, 0x1

    .local v5, "bCfuEnabled":Z
    :goto_2
    move-object/from16 v31, v22

    .line 1043
    check-cast v31, [I

    const/16 v32, 0x1

    aget v31, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    .line 1045
    .local v6, "bIsLine1":Z
    :goto_3
    if-eqz v6, :cond_0

    .line 1046
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mCfuReturnValue:Ljava/lang/Object;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCallForwardingInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1048
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1047
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1042
    .end local v5    # "bCfuEnabled":Z
    .end local v6    # "bIsLine1":Z
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "bCfuEnabled":Z
    goto :goto_2

    .line 1043
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "bIsLine1":Z
    goto :goto_3

    .line 1054
    .end local v5    # "bCfuEnabled":Z
    .end local v6    # "bIsLine1":Z
    :sswitch_5f
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCallRelatedSuppSvcRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1058
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1057
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1063
    :sswitch_60
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1068
    check-cast v22, [Ljava/lang/String;

    .end local v22    # "ret":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->setCallIndication([Ljava/lang/String;)V

    .line 1069
    const/16 v23, 0x1

    .line 1070
    const/16 v17, 0x3e9

    .line 1071
    goto/16 :goto_1

    .line 1074
    .restart local v22    # "ret":Ljava/lang/Object;
    :sswitch_61
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v31, v22

    .line 1076
    check-cast v31, [Ljava/lang/String;

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .local v27, "simCipherStatus":I
    move-object/from16 v31, v22

    .line 1077
    check-cast v31, [Ljava/lang/String;

    const/16 v32, 0x1

    aget-object v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .local v26, "sessionStatus":I
    move-object/from16 v31, v22

    .line 1078
    check-cast v31, [Ljava/lang/String;

    const/16 v32, 0x2

    aget-object v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1079
    .local v8, "csStatus":I
    check-cast v22, [Ljava/lang/String;

    .end local v22    # "ret":Ljava/lang/Object;
    const/16 v31, 0x3

    aget-object v31, v22, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1081
    .local v18, "psStatus":I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "RIL_UNSOL_CIPHER_INDICATION :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1083
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v7, v0, [I

    .line 1085
    .local v7, "cipherResult":[I
    const/16 v31, 0x0

    aput v27, v7, v31

    .line 1086
    const/16 v31, 0x1

    aput v8, v7, v31

    .line 1087
    const/16 v31, 0x2

    aput v18, v7, v31

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCipherIndicationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1091
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1090
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1115
    .end local v7    # "cipherResult":[I
    .end local v8    # "csStatus":I
    .end local v18    # "psStatus":I
    .end local v26    # "sessionStatus":I
    .end local v27    # "simCipherStatus":I
    .restart local v22    # "ret":Ljava/lang/Object;
    :sswitch_62
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSpeechCodecInfoRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1119
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1118
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1125
    :sswitch_63
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1126
    const/16 v28, 0x0

    .line 1127
    .local v28, "stat":[I
    if-eqz v22, :cond_c

    move-object/from16 v28, v22

    .line 1128
    check-cast v28, [I

    .line 1130
    .end local v28    # "stat":[I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPsNetworkStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1131
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1130
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1136
    :sswitch_64
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImeiLockRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1144
    :sswitch_65
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInvalidSimInfoRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInvalidSimInfoRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1152
    :sswitch_66
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1153
    if-eqz v22, :cond_0

    move-object/from16 v11, v22

    .line 1154
    check-cast v11, [I

    .line 1155
    .local v11, "emmrrs":[I
    const/16 v31, 0x0

    aget v31, v11, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .local v19, "ps_status":I
    goto/16 :goto_1

    .line 1173
    .end local v11    # "emmrrs":[I
    .end local v19    # "ps_status":I
    :sswitch_67
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mFemtoCellInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1179
    :sswitch_68
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1180
    if-eqz v22, :cond_0

    move-object/from16 v4, v22

    .line 1181
    check-cast v4, [I

    .line 1182
    .local v4, "acmt":[I
    array-length v0, v4

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 1183
    const/16 v31, 0x0

    aget v31, v4, v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1184
    .local v13, "error_type":I
    const/16 v31, 0x1

    aget v12, v4, v31

    .local v12, "error_cause":I
    goto/16 :goto_1

    .line 1211
    .end local v4    # "acmt":[I
    .end local v12    # "error_cause":I
    .end local v13    # "error_type":I
    :sswitch_69
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mStkEvdlCallRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mStkEvdlCallRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1220
    :sswitch_6a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mStkCallCtrlRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mStkCallCtrlRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1227
    :sswitch_6b
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mStkSetupMenuResetRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mStkSetupMenuResetRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1236
    :sswitch_6c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSessionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSessionChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1244
    :sswitch_6d
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimMissing:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimMissing:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1247
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1246
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1251
    :sswitch_6e
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimRecovery:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimRecovery:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1254
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1253
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1258
    :sswitch_6f
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVirtualSimOn:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVirtualSimOn:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1261
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1260
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1265
    :sswitch_70
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVirtualSimOff:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVirtualSimOff:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1268
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1267
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1272
    :sswitch_71
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    .line 1274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimPlugOutRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1275
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1274
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1277
    :cond_d
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mCfuReturnValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1280
    :sswitch_72
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSimPlugInRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1283
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1282
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1287
    :sswitch_73
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mTrayPlugInRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mTrayPlugInRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1290
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1289
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1297
    :sswitch_74
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->size()I

    move-result v31

    if-eqz v31, :cond_e

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSmsReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 1303
    :cond_e
    const-string/jumbo v31, "RILJ"

    const-string/jumbo v32, "Cache sms ready event"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mIsSmsReady:Z

    goto/16 :goto_1

    .line 1310
    :sswitch_75
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMeSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMeSmsFullRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_1

    .line 1318
    :sswitch_76
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEtwsNotificationRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEtwsNotificationRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1326
    :sswitch_77
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCommonSlotNoChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCommonSlotNoChangedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1332
    :sswitch_78
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDataAllowedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1339
    :sswitch_79
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPhbReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1342
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1341
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1347
    :sswitch_7a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsRegistrationInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1353
    :sswitch_7b
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mWPMonitor:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1355
    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mEcopsReturnValue:Ljava/lang/Object;

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPlmnChangeNotificationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->size()I

    move-result v31

    if-lez v31, :cond_f

    .line 1357
    const-string/jumbo v31, "ECOPS,notify mPlmnChangeNotificationRegistrant"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mPlmnChangeNotificationRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1359
    new-instance v33, Landroid/os/AsyncResult;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1358
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    :goto_4
    monitor-exit v32

    goto/16 :goto_1

    .line 1354
    :catchall_0
    move-exception v31

    monitor-exit v32

    throw v31

    .line 1364
    :sswitch_7c
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mWPMonitor:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    .line 1366
    :try_start_1
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mEmsrReturnValue:Ljava/lang/Object;

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mRegistrationSuspendedRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_f

    .line 1368
    const-string/jumbo v31, "EMSR, notify mRegistrationSuspendedRegistrant"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mRegistrationSuspendedRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1370
    new-instance v33, Landroid/os/AsyncResult;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1369
    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 1365
    :catchall_1
    move-exception v31

    monitor-exit v32

    throw v31

    .line 1376
    :sswitch_7d
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMelockRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMelockRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1379
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1378
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1384
    :sswitch_7e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsEnableRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsEnableRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 1390
    :sswitch_7f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsDisableRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsDisableRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    :sswitch_80
    move-object/from16 v31, v22

    .line 1397
    check-cast v31, [I

    const/16 v32, 0x0

    aget v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 1398
    .local v25, "scriResult":Ljava/lang/Integer;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "s:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ":"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v31, v22

    check-cast v31, [I

    const/16 v33, 0x0

    aget v31, v31, v33

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1399
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mScriResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mScriResultRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1406
    .end local v25    # "scriResult":Ljava/lang/Integer;
    :sswitch_81
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEpsNetworkFeatureSupportRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1409
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1408
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1416
    :sswitch_82
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEconfSrvccRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1424
    :sswitch_83
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1426
    const-string/jumbo v31, "Notify ECONF result"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    move-object/from16 v10, v22

    .line 1427
    check-cast v10, [Ljava/lang/String;

    .line 1428
    .local v10, "econfResult":[Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "ECONF result = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x3

    aget-object v32, v10, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEconfResultRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1435
    .end local v10    # "econfResult":[Ljava/lang/String;
    :sswitch_84
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCallInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1443
    :sswitch_85
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEpsNetworkFeatureInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1450
    :sswitch_86
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSrvccHandoverInfoIndicationRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1459
    :sswitch_87
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1465
    :sswitch_88
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMoDataBarringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMoDataBarringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1472
    :sswitch_89
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSsacBarringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mSsacBarringInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1480
    :sswitch_8a
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEmergencyBearerSupportInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEmergencyBearerSupportInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1489
    :sswitch_8b
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mRacUpdateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1491
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1490
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1494
    :sswitch_8c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mRemoveRestrictEutranRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1496
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1495
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1500
    :sswitch_8d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mResetAttachApnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1502
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1501
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1508
    :sswitch_8e
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mAcceptedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mAcceptedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1513
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1512
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1518
    :sswitch_8f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mUtkSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mUtkSessionEndRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1523
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1522
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1528
    :sswitch_90
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mUtkProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mUtkProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1533
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1532
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1538
    :sswitch_91
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mUtkEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mUtkEventRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1542
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1541
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1547
    :sswitch_92
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mViaGpsEvent:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mViaGpsEvent:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1555
    :sswitch_93
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1559
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1558
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1564
    :sswitch_94
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInvalidSimDetectedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInvalidSimDetectedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1568
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1567
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1573
    :sswitch_95
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mAbnormalEventRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mAbnormalEventRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1580
    :sswitch_96
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaCardTypeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1583
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaCardTypeValue:Ljava/lang/Object;

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaCardTypeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1590
    :sswitch_97
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEngModeNetworkInfoRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEngModeNetworkInfoRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1594
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1593
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1602
    :sswitch_98
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1604
    const-string/jumbo v15, ""

    .line 1605
    .local v15, "mccmnc":Ljava/lang/String;
    if-eqz v22, :cond_10

    move-object/from16 v0, v22

    instance-of v0, v0, [Ljava/lang/String;

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v24, v22

    .line 1606
    check-cast v24, [Ljava/lang/String;

    .line 1607
    .local v24, "s":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_10

    .line 1608
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    aget-object v32, v24, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x1

    aget-object v32, v24, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1611
    .end local v24    # "s":[Ljava/lang/String;
    :cond_10
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "mccmnc changed mccmnc="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mMccMncChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v15, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1619
    .end local v15    # "mccmnc":Ljava/lang/String;
    :sswitch_99
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    move-object/from16 v20, v22

    .line 1621
    check-cast v20, [I

    .line 1622
    .local v20, "rat":[I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Notify RIL_UNSOL_GMSS_RAT_CHANGED result rat = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mGmssRatChangedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mGmssRatChangedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1625
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1624
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1633
    .end local v20    # "rat":[I
    :sswitch_9a
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDataNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mDataNetworkTypeChangedRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1638
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1637
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1645
    :sswitch_9b
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mIratStateChangeRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1652
    :sswitch_9c
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsiRefreshDoneRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mImsiRefreshDoneRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1656
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1655
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1661
    :sswitch_9d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaImsiReadyRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaImsiReadyRegistrant:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1665
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1664
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1670
    :sswitch_9e
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1672
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/MediaTekRIL;->mIsEusimReady:Z

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEusimReady:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mEusimReady:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v35}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1675
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 1677
    :cond_11
    const-string/jumbo v31, "gsm.ril.cardtypeset"

    const-string/jumbo v32, "1"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string/jumbo v31, "set gsm.ril.cardtypeset to 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1679
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    const/16 v32, 0xb

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 1680
    :cond_13
    const-string/jumbo v31, "gsm.ril.cardtypeset.2"

    const-string/jumbo v32, "1"

    invoke-static/range {v31 .. v32}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    const-string/jumbo v31, "set gsm.ril.cardtypeset.2 to 1"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1683
    :cond_14
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "not set cardtypeset mInstanceId="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1691
    :sswitch_9f
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaSignalFadeRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1695
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1694
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1701
    :sswitch_a0
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mCdmaToneSignalsRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    .line 1705
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1704
    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1710
    :sswitch_a1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mBipProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mBipProCmdRegistrant:Landroid/os/Registrant;

    move-object/from16 v31, v0

    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual/range {v31 .. v32}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1729
    :sswitch_a2
    const/16 v29, 0x0

    .line 1731
    .local v29, "state":[I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLog(I)V

    .line 1733
    if-eqz v22, :cond_0

    move-object/from16 v29, v22

    .line 1734
    check-cast v29, [I

    .line 1737
    .local v29, "state":[I
    const/16 v31, 0x0

    aget v31, v29, v31

    if-nez v31, :cond_15

    .line 1738
    const/16 v31, 0x1

    invoke-static/range {v31 .. v31}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)V

    .line 1744
    :goto_5
    new-instance v14, Landroid/content/Intent;

    .line 1745
    const-string/jumbo v31, "android.intent.action.ACTION_WORLD_MODE_CHANGED"

    .line 1744
    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1746
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string/jumbo v31, "worldModeState"

    .line 1747
    const/16 v32, 0x0

    aget v32, v29, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    .line 1746
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1750
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Broadcast for WorldModeChanged: state="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    aget v32, v29, v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1740
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_15
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->updateSwitchingState(Z)V

    goto :goto_5

    .line 1756
    .end local v29    # "state":[I
    :sswitch_a3
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1759
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1758
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1764
    :sswitch_a4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogvRet(ILjava/lang/Object;)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVtRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mVtRingRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1767
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1766
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1774
    :sswitch_a5
    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/MediaTekRIL;->unsljLogRet(ILjava/lang/Object;)V

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mLteAccessStratumStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mLteAccessStratumStateRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v31, v0

    .line 1777
    new-instance v32, Landroid/os/AsyncResult;

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1776
    invoke-virtual/range {v31 .. v32}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 688
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f8 -> :sswitch_0
        0x40a -> :sswitch_1
        0x40e -> :sswitch_d
        0x40f -> :sswitch_e
        0x410 -> :sswitch_f
        0x412 -> :sswitch_10
        0x413 -> :sswitch_11
        0x414 -> :sswitch_12
        0x415 -> :sswitch_13
        0xbb8 -> :sswitch_2
        0xbb9 -> :sswitch_3
        0xbba -> :sswitch_23
        0xbbd -> :sswitch_46
        0xbbe -> :sswitch_45
        0xbbf -> :sswitch_28
        0xbc0 -> :sswitch_1a
        0xbc3 -> :sswitch_1b
        0xbc4 -> :sswitch_1c
        0xbc5 -> :sswitch_1d
        0xbc6 -> :sswitch_7
        0xbc7 -> :sswitch_6
        0xbc8 -> :sswitch_8
        0xbca -> :sswitch_9
        0xbcb -> :sswitch_a
        0xbcc -> :sswitch_1e
        0xbcd -> :sswitch_1f
        0xbce -> :sswitch_47
        0xbcf -> :sswitch_29
        0xbd0 -> :sswitch_2a
        0xbd1 -> :sswitch_b
        0xbd3 -> :sswitch_5
        0xbd4 -> :sswitch_24
        0xbd5 -> :sswitch_19
        0xbd6 -> :sswitch_2d
        0xbd7 -> :sswitch_25
        0xbd8 -> :sswitch_26
        0xbd9 -> :sswitch_27
        0xbdd -> :sswitch_32
        0xbde -> :sswitch_2e
        0xbdf -> :sswitch_2b
        0xbe0 -> :sswitch_14
        0xbe1 -> :sswitch_15
        0xbe2 -> :sswitch_16
        0xbe3 -> :sswitch_17
        0xbe5 -> :sswitch_21
        0xbe6 -> :sswitch_22
        0xbe7 -> :sswitch_c
        0xbe8 -> :sswitch_2c
        0xbe9 -> :sswitch_2f
        0xbea -> :sswitch_30
        0xbeb -> :sswitch_31
        0xbec -> :sswitch_18
        0xbed -> :sswitch_34
        0xbee -> :sswitch_33
        0xbef -> :sswitch_35
        0xbf0 -> :sswitch_36
        0xbf2 -> :sswitch_3f
        0xbf3 -> :sswitch_37
        0xbf4 -> :sswitch_49
        0xbf6 -> :sswitch_43
        0xbf7 -> :sswitch_40
        0xbfa -> :sswitch_4a
        0xbfb -> :sswitch_4c
        0xbfc -> :sswitch_4f
        0xbfd -> :sswitch_50
        0xbfe -> :sswitch_51
        0xbff -> :sswitch_52
        0xc01 -> :sswitch_44
        0xc04 -> :sswitch_20
        0xc07 -> :sswitch_53
        0x1388 -> :sswitch_38
        0x1389 -> :sswitch_39
        0x138a -> :sswitch_3a
        0x138b -> :sswitch_3b
        0x138c -> :sswitch_3c
        0x138d -> :sswitch_3d
        0x138e -> :sswitch_42
        0x138f -> :sswitch_3e
        0x1390 -> :sswitch_41
        0x1391 -> :sswitch_48
        0x1393 -> :sswitch_4b
        0x1394 -> :sswitch_4d
        0x1395 -> :sswitch_4e
        0x1396 -> :sswitch_4
    .end sparse-switch

    .line 862
    :sswitch_data_1
    .sparse-switch
        0x3f8 -> :sswitch_54
        0x40a -> :sswitch_55
        0x410 -> :sswitch_59
        0x412 -> :sswitch_5a
        0x413 -> :sswitch_5b
        0x414 -> :sswitch_5c
        0x415 -> :sswitch_5d
        0xbb8 -> :sswitch_56
        0xbb9 -> :sswitch_57
        0xbba -> :sswitch_79
        0xbbd -> :sswitch_75
        0xbbe -> :sswitch_74
        0xbbf -> :sswitch_80
        0xbc0 -> :sswitch_6d
        0xbc3 -> :sswitch_6e
        0xbc4 -> :sswitch_6f
        0xbc5 -> :sswitch_70
        0xbc6 -> :sswitch_65
        0xbc7 -> :sswitch_63
        0xbc8 -> :sswitch_68
        0xbca -> :sswitch_64
        0xbcb -> :sswitch_66
        0xbcc -> :sswitch_71
        0xbcd -> :sswitch_72
        0xbce -> :sswitch_76
        0xbcf -> :sswitch_7b
        0xbd0 -> :sswitch_7c
        0xbd1 -> :sswitch_69
        0xbd3 -> :sswitch_67
        0xbd4 -> :sswitch_6b
        0xbd5 -> :sswitch_6c
        0xbd6 -> :sswitch_82
        0xbd7 -> :sswitch_7e
        0xbd8 -> :sswitch_7f
        0xbd9 -> :sswitch_7a
        0xbdd -> :sswitch_8b
        0xbde -> :sswitch_83
        0xbdf -> :sswitch_7d
        0xbe0 -> :sswitch_5e
        0xbe1 -> :sswitch_5f
        0xbe2 -> :sswitch_60
        0xbe3 -> :sswitch_61
        0xbe5 -> :sswitch_77
        0xbe6 -> :sswitch_78
        0xbe7 -> :sswitch_6a
        0xbe8 -> :sswitch_81
        0xbe9 -> :sswitch_84
        0xbea -> :sswitch_85
        0xbeb -> :sswitch_86
        0xbec -> :sswitch_62
        0xbed -> :sswitch_87
        0xbee -> :sswitch_8c
        0xbef -> :sswitch_88
        0xbf0 -> :sswitch_89
        0xbf2 -> :sswitch_95
        0xbf3 -> :sswitch_8a
        0xbf4 -> :sswitch_9b
        0xbf6 -> :sswitch_99
        0xbf7 -> :sswitch_96
        0xbfa -> :sswitch_9c
        0xbfb -> :sswitch_9e
        0xbfc -> :sswitch_a1
        0xbfd -> :sswitch_a2
        0xbfe -> :sswitch_a3
        0xbff -> :sswitch_a4
        0xc01 -> :sswitch_8d
        0xc04 -> :sswitch_73
        0xc07 -> :sswitch_a5
        0x1388 -> :sswitch_8e
        0x1389 -> :sswitch_8f
        0x138a -> :sswitch_90
        0x138b -> :sswitch_91
        0x138c -> :sswitch_92
        0x138d -> :sswitch_93
        0x138e -> :sswitch_98
        0x138f -> :sswitch_94
        0x1390 -> :sswitch_97
        0x1391 -> :sswitch_9a
        0x1393 -> :sswitch_9d
        0x1394 -> :sswitch_9f
        0x1395 -> :sswitch_a0
        0x1396 -> :sswitch_58
    .end sparse-switch
.end method

.method public profileDownload(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4989
    const/16 v1, 0x44

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4991
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4997
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4988
    return-void
.end method

.method public queryCDMANetWorkRegistrationState(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4904
    const/16 v1, 0xfa9

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4907
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4910
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4902
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4799
    const/16 v1, 0xfa5

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4802
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4805
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4797
    return-void
.end method

.method public queryCDMASmsAndPBStatus(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 4892
    const/16 v1, 0xfa8

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4895
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4898
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4890
    return-void
.end method

.method public queryCellBroadcastConfigInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3831
    const/16 v1, 0x80a

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3833
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3834
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3830
    return-void
.end method

.method public queryModemType(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3891
    const/16 v1, 0x813

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3892
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3893
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3890
    return-void
.end method

.method public queryNetworkLock(ILandroid/os/Message;)V
    .locals 3
    .param p1, "category"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3216
    const/16 v1, 0x7e2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3218
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryNetworkLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3222
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3223
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3225
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3215
    return-void
.end method

.method public queryPhbStorageInfo(ILandroid/os/Message;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3407
    const/16 v1, 0x7dc

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3409
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3410
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3406
    return-void
.end method

.method public queryStkSetUpMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2543
    const/16 v1, 0xfb8

    .line 2542
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2546
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2549
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2541
    return-void
.end method

.method public queryUPBCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 3474
    const/16 v1, 0x7f3

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3475
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3473
    return-void
.end method

.method public queryUtkSetupMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2530
    const/16 v1, 0xfb7

    .line 2529
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2532
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2528
    return-void
.end method

.method public readPhoneBookEntryExt(IILandroid/os/Message;)V
    .locals 3
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 3697
    const/16 v1, 0x801

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3698
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3699
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3700
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3702
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3696
    return-void
.end method

.method public readUPBGasList(IILandroid/os/Message;)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3511
    const/16 v1, 0x7f6

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3512
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3513
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3516
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3510
    return-void
.end method

.method public readUPBGrpEntry(ILandroid/os/Message;)V
    .locals 3
    .param p1, "adnIndex"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3520
    const/16 v1, 0x7f7

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3521
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3519
    return-void
.end method

.method public reloadModemType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "modemType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3905
    const/16 v1, 0x84d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3906
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3907
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3909
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3904
    return-void
.end method

.method public removeCellBroadcastMsg(IILandroid/os/Message;)V
    .locals 3
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3851
    const/16 v1, 0x838

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3853
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3854
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3855
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3858
    const-string/jumbo v2, ", "

    .line 3857
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3860
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3850
    return-void
.end method

.method public removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "confCallId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "callIdToRemove"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 4207
    const/16 v1, 0x83b

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4209
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4210
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4211
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4212
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4215
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4206
    return-void
.end method

.method public replaceVtCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4182
    const/16 v1, 0x844

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4184
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4185
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4189
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4180
    return-void
.end method

.method public reportUtkServiceIsRunning(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4979
    const/16 v1, 0x67

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4981
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4984
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4978
    return-void
.end method

.method public requestAGPSGetMpcIpPort(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 4856
    const/16 v1, 0xfac

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4858
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4860
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4855
    return-void
.end method

.method public requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 4843
    const/16 v1, 0xfab

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4844
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4845
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4846
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4849
    const-string/jumbo v2, " : "

    .line 4848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4849
    const-string/jumbo v2, ", "

    .line 4848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4851
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4842
    return-void
.end method

.method public requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 3
    .param p1, "connected"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4832
    const/16 v1, 0xfaa

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4833
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4834
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4838
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4831
    return-void
.end method

.method public requestDeactivateLinkDownPdn(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 5088
    const/16 v1, 0x851

    .line 5087
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5090
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5092
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5086
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 3133
    const-string/jumbo v3, "ro.mtk_tc1_feature"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3134
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 3135
    .local v2, "result":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3136
    .local v1, "mStringBuilder":Ljava/lang/StringBuilder;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-byte v0, v2, v3

    .line 3137
    .local v0, "mByte":B
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3138
    .end local v0    # "mByte":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestIsimAuthentication - nonce = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3142
    .end local v1    # "mStringBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "result":[B
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3132
    return-void
.end method

.method public requestSetEtsDev(ILandroid/os/Message;)V
    .locals 3
    .param p1, "dev"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4865
    const/16 v1, 0xfb0

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4866
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4867
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4871
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4864
    return-void
.end method

.method public requestSetPsActiveSlot(ILandroid/os/Message;)V
    .locals 3
    .param p1, "psSlot"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5070
    const/16 v1, 0x846

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5071
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5072
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5069
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enableHPF"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4757
    const/16 v2, 0xfa2

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4760
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4763
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4764
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4766
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4755
    return-void

    .line 4764
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestUtkRefresh(ILandroid/os/Message;)V
    .locals 3
    .param p1, "refreshType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4965
    const/16 v1, 0xfa7

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4967
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4968
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4974
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4964
    return-void
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2692
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2699
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_7

    .line 2700
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 2702
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 2703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 2704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 2705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 2706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 2707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 2708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2709
    .local v7, "voiceSettings":I
    if-nez v7, :cond_2

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 2712
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v8, :cond_3

    move v8, v10

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 2713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isVoice = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v11, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ", isVideo = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v11, v0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_5
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 2716
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2718
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 2719
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 2721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 2722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2723
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_5

    .line 2724
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 2725
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 2726
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 2727
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 2728
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 2729
    const-string/jumbo v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 2730
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    .line 2731
    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    .line 2729
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLogv(Ljava/lang/String;)V

    .line 2732
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2733
    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 2732
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLogv(Ljava/lang/String;)V

    .line 2734
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2735
    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 2734
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLogv(Ljava/lang/String;)V

    .line 2741
    .end local v5    # "userData":[B
    :goto_6
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 2743
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2745
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_6

    .line 2746
    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2747
    const-string/jumbo v8, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2699
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_0
    move v8, v10

    .line 2705
    goto/16 :goto_1

    :cond_1
    move v8, v10

    .line 2706
    goto/16 :goto_2

    .restart local v7    # "voiceSettings":I
    :cond_2
    move v8, v9

    .line 2709
    goto/16 :goto_3

    :cond_3
    move v8, v9

    .line 2712
    goto/16 :goto_4

    :cond_4
    move v8, v10

    .line 2715
    goto/16 :goto_5

    .line 2737
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_5
    const-string/jumbo v8, "Incoming UUS : NOT present!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_6

    .line 2749
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2750
    const-string/jumbo v8, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_7

    .line 2754
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_7
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2756
    if-nez v3, :cond_8

    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2757
    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_8

    .line 2758
    const-string/jumbo v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2760
    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2764
    :cond_8
    return-object v4
.end method

.method protected responseCellList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3000
    .local v3, "num":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3010
    .local v5, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const-string/jumbo v7, "gsm.enbr.rat"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3011
    .local v4, "radioType":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "gsm.enbr.rat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3015
    if-eqz v4, :cond_0

    .line 3016
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3017
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3018
    .local v6, "rssi":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3019
    .local v2, "location":Ljava/lang/String;
    new-instance v0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v0, v6, v2, v4}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 3020
    .local v0, "cell":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3016
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3023
    .end local v0    # "cell":Landroid/telephony/NeighboringCellInfo;
    .end local v1    # "i":I
    .end local v2    # "location":Ljava/lang/String;
    .end local v6    # "rssi":I
    :cond_0
    return-object v5
.end method

.method protected responseFailCause(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 2153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2154
    .local v2, "numInts":I
    new-array v3, v2, [I

    .line 2155
    .local v3, "response":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 2155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2158
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v0}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 2159
    .local v0, "failCause":Lcom/android/internal/telephony/LastCallFailCause;
    aget v4, v3, v5

    iput v4, v0, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 2160
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_1

    .line 2161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 2163
    :cond_1
    return-object v0
.end method

.method protected responseFemtoCellInfos(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 15
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3056
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 3059
    .local v13, "strings":[Ljava/lang/String;
    array-length v0, v13

    rem-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_0

    .line 3060
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RIL_REQUEST_GET_FEMTOCELL_LIST: invalid response. Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3062
    array-length v2, v13

    .line 3061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3062
    const-string/jumbo v2, " strings, expected multible of 6"

    .line 3061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3060
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3065
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    array-length v0, v13

    div-int/lit8 v0, v0, 0x6

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3068
    .local v12, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/internal/telephony/FemtoCellInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v13

    if-ge v10, v0, :cond_8

    .line 3074
    add-int/lit8 v0, v10, 0x1

    aget-object v0, v13, v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v10, 0x1

    aget-object v0, v13, v0

    const-string/jumbo v1, "uCs2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3076
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseOperatorInfos handling UCS2 format name"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    add-int/lit8 v0, v10, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v10, 0x1

    aget-object v2, v13, v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v4, "UTF-16"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v1, v13, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3085
    :cond_1
    :goto_1
    add-int/lit8 v0, v10, 0x1

    aget-object v0, v13, v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, v10, 0x1

    aget-object v0, v13, v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, v10, 0x1

    aget-object v0, v13, v0

    add-int/lit8 v1, v10, 0x0

    aget-object v1, v13, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3086
    :cond_2
    const-string/jumbo v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lookup RIL responseFemtoCellInfos() for plmn id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    add-int/lit8 v0, v10, 0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    add-int/lit8 v4, v10, 0x0

    aget-object v4, v13, v4

    iget-object v5, p0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v4, v14, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 3090
    :cond_3
    add-int/lit8 v0, v10, 0x2

    aget-object v0, v13, v0

    const-string/jumbo v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3091
    const-string/jumbo v7, "4G"

    .line 3092
    .local v7, "actStr":Ljava/lang/String;
    const/16 v6, 0xe

    .line 3102
    .local v6, "rat":I
    :goto_2
    const-string/jumbo v11, "gsm.baseband.capability"

    .line 3103
    .local v11, "property_name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3107
    :cond_4
    const/4 v0, 0x3

    invoke-static {v11, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 3108
    .local v8, "basebandCapability":I
    const-string/jumbo v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "property_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",basebandCapability="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const/4 v0, 0x3

    if-ge v0, v8, :cond_5

    .line 3110
    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v1, v10, 0x1

    aget-object v1, v13, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v0

    .line 3113
    :cond_5
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v0, v10, 0x5

    aget-object v0, v13, v0

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 3115
    .local v3, "hnbName":Ljava/lang/String;
    const-string/jumbo v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FemtoCellInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x3

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x4

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x5

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v10, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hnbName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    new-instance v0, Lcom/mediatek/internal/telephony/FemtoCellInfo;

    .line 3119
    add-int/lit8 v1, v10, 0x3

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3120
    add-int/lit8 v2, v10, 0x4

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3122
    add-int/lit8 v4, v10, 0x0

    aget-object v4, v13, v4

    .line 3123
    add-int/lit8 v5, v10, 0x1

    aget-object v5, v13, v5

    .line 3118
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/internal/telephony/FemtoCellInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3117
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3068
    add-int/lit8 v10, v10, 0x6

    goto/16 :goto_0

    .line 3080
    .end local v3    # "hnbName":Ljava/lang/String;
    .end local v6    # "rat":I
    .end local v7    # "actStr":Ljava/lang/String;
    .end local v8    # "basebandCapability":I
    .end local v11    # "property_name":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3081
    .local v9, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v0, "RILJ"

    const-string/jumbo v1, "responseOperatorInfos UnsupportedEncodingException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3093
    .end local v9    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v0, v10, 0x2

    aget-object v0, v13, v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3094
    const-string/jumbo v7, "3G"

    .line 3095
    .restart local v7    # "actStr":Ljava/lang/String;
    const/4 v6, 0x3

    .restart local v6    # "rat":I
    goto/16 :goto_2

    .line 3097
    .end local v6    # "rat":I
    .end local v7    # "actStr":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "2G"

    .line 3098
    .restart local v7    # "actStr":Ljava/lang/String;
    const/4 v6, 0x1

    .restart local v6    # "rat":I
    goto/16 :goto_2

    .line 3127
    .end local v6    # "rat":I
    .end local v7    # "actStr":Ljava/lang/String;
    :cond_8
    return-object v12
.end method

.method protected responseInts(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2595
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 2597
    .local v2, "response":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseInts numInts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2599
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 2602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseInts response["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2605
    :cond_0
    return-object v2
.end method

.method protected responseOperatorInfosWithAct(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 2845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MediaTekRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 2848
    .local v7, "strings":[Ljava/lang/String;
    array-length v8, v7

    rem-int/lit8 v8, v8, 0x5

    if-eqz v8, :cond_0

    .line 2849
    new-instance v8, Ljava/lang/RuntimeException;

    .line 2850
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RIL_REQUEST_QUERY_AVAILABLE_NETWORKS_WITH_ACT: invalid response. Got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2851
    array-length v10, v7

    .line 2850
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2851
    const-string/jumbo v10, " strings, expected multible of 5"

    .line 2850
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2849
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2854
    :cond_0
    const-string/jumbo v8, "gsm.cops.lac"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2855
    .local v2, "lacStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2856
    .local v3, "lacValid":Z
    const/4 v1, 0x0

    .line 2858
    .local v1, "lacIndex":I
    const-string/jumbo v8, "RILJ"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lacStr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " lacStr.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " strings.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    array-length v9, v7

    div-int/lit8 v9, v9, 0x5

    if-ne v8, v9, :cond_1

    .line 2860
    const-string/jumbo v8, "RILJ"

    const-string/jumbo v9, "lacValid set to true"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const/4 v3, 0x1

    .line 2864
    :cond_1
    const-string/jumbo v8, "gsm.cops.lac"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    new-instance v5, Ljava/util/ArrayList;

    array-length v8, v7

    div-int/lit8 v8, v8, 0x5

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2868
    .local v5, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v7

    if-ge v0, v8, :cond_5

    .line 2870
    add-int/lit8 v8, v0, 0x2

    aget-object v8, v7, v8

    if-eqz v8, :cond_2

    .line 2871
    add-int/lit8 v8, v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v10

    add-int/lit8 v11, v0, 0x2

    aget-object v11, v7, v11

    iget-object v12, p0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v13, v12}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2872
    add-int/lit8 v8, v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v10

    add-int/lit8 v11, v0, 0x2

    aget-object v11, v7, v11

    iget-object v12, p0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v13, v12}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2873
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lookup RIL responseOperator(), longAlpha= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",shortAlpha= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",numeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2876
    :cond_2
    const/4 v4, 0x0

    .line 2877
    .local v4, "longName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2879
    .local v6, "shortName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v8

    int-to-long v8, v8

    add-int/lit8 v10, v0, 0x2

    aget-object v10, v7, v10

    const/4 v11, 0x1

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/MediaTekRIL;->lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 2880
    .local v4, "longName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v8

    int-to-long v8, v8

    add-int/lit8 v10, v0, 0x2

    aget-object v10, v7, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/MediaTekRIL;->lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 2881
    .local v6, "shortName":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 2882
    add-int/lit8 v8, v0, 0x0

    aput-object v4, v7, v8

    .line 2884
    :cond_3
    if-eqz v6, :cond_4

    .line 2885
    add-int/lit8 v8, v0, 0x1

    aput-object v6, v7, v8

    .line 2887
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lookupOperatorNameFromNetwork in responseOperatorInfosWithAct(),updated longAlpha= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",shortAlpha= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",numeric="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v0, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2978
    add-int/lit8 v8, v0, 0x0

    add-int/lit8 v9, v0, 0x0

    aget-object v9, v7, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x4

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2979
    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v9, v0, 0x1

    aget-object v9, v7, v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v0, 0x4

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 2982
    new-instance v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 2983
    add-int/lit8 v9, v0, 0x0

    aget-object v9, v7, v9

    .line 2984
    add-int/lit8 v10, v0, 0x1

    aget-object v10, v7, v10

    .line 2985
    add-int/lit8 v11, v0, 0x2

    aget-object v11, v7, v11

    .line 2986
    add-int/lit8 v12, v0, 0x3

    aget-object v12, v7, v12

    .line 2982
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2868
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_0

    .line 2988
    .end local v4    # "longName":Ljava/lang/String;
    .end local v6    # "shortName":Ljava/lang/String;
    :cond_5
    return-object v5
.end method

.method protected responseSetPreferredNetworkType(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 3027
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->getRequestCount(I)I

    move-result v0

    .line 3028
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 3029
    new-instance v1, Landroid/content/Intent;

    .line 3030
    const-string/jumbo v2, "android.intent.action.ACTION_RAT_CHANGED"

    .line 3029
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3031
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "phone"

    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3032
    const-string/jumbo v2, "rat"

    iget v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreferredNetworkType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3033
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3035
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SetRatRequestCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3037
    const/4 v2, 0x0

    return-object v2
.end method

.method protected responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x4

    .line 2635
    new-instance v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 2637
    .local v5, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const/4 v4, 0x0

    .line 2638
    .local v4, "i":I
    const/4 v3, 0x0

    .line 2641
    .local v3, "files_num":I
    const-string/jumbo v7, "ro.mtk_wifi_calling_ril_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->sessionId:I

    .line 2648
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 2650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2651
    .local v0, "efId_String":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v9, v7, :cond_1

    .line 2652
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v3, v7, 0x4

    .line 2654
    :cond_1
    new-array v7, v3, [I

    iput-object v7, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    .line 2655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "efId_String: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", files_num: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2657
    const/4 v6, 0x0

    .line 2658
    .local v6, "startIdx":I
    const/4 v2, 0x0

    .line 2659
    .local v2, "endIdx":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v9, v7, :cond_2

    .line 2660
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 2661
    add-int/lit8 v7, v6, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2662
    .local v1, "efidStr":Ljava/lang/String;
    iget-object v7, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    const/16 v8, 0x10

    invoke-static {v1, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v4

    .line 2663
    add-int/lit8 v6, v6, 0x4

    .line 2664
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "EFId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2660
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2673
    .end local v1    # "efidStr":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 2675
    const-string/jumbo v7, "ro.mtk_wifi_calling_ril_support"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2676
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "responseSimRefresh, sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->sessionId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2677
    const-string/jumbo v8, ", efId="

    .line 2676
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2677
    iget-object v8, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:[I

    .line 2676
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2677
    const-string/jumbo v8, ", aid="

    .line 2676
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2677
    iget-object v8, v5, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 2676
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2680
    :cond_3
    return-object v5
.end method

.method protected responseStringEncodeBase64(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/16 v5, 0x10

    .line 2612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2615
    .local v2, "response":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseStringEncodeBase64 - Response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 2619
    .local v0, "auth_output":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 2620
    aget-byte v3, v0, v1

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 2621
    aget-byte v3, v0, v1

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 2619
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2623
    :cond_0
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 2626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "responseStringEncodeBase64 - Encoded Response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2629
    return-object v2
.end method

.method public resumeCall(ILandroid/os/Message;)V
    .locals 3
    .param p1, "callIdToResume"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4224
    const/16 v1, 0x83d

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4226
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4227
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4232
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4223
    return-void
.end method

.method public selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
    .locals 5
    .param p1, "femtocell"    # Lcom/mediatek/internal/telephony/FemtoCellInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    .line 4469
    const/16 v2, 0x81e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4471
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgRat()I

    move-result v0

    .line 4473
    .local v0, "act":I
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 4474
    const/4 v0, 0x7

    .line 4481
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    const-string/jumbo v3, " csgId="

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgId()I

    move-result v3

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    const-string/jumbo v3, " plmn="

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    const-string/jumbo v3, " rat="

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgRat()I

    move-result v3

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4482
    const-string/jumbo v3, " act="

    .line 4481
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4484
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4485
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4486
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4487
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Lcom/mediatek/internal/telephony/FemtoCellInfo;->getCsgId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4489
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4467
    return-void

    .line 4475
    :cond_0
    if-ne v0, v4, :cond_1

    .line 4476
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 4478
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "nAction"    # I
    .param p2, "nType"    # I
    .param p3, "strData"    # Ljava/lang/String;
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 3321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " sendBTSIMProfile nAction is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3322
    packed-switch p1, :pswitch_data_0

    .line 3320
    :goto_0
    return-void

    .line 3324
    :pswitch_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/MediaTekRIL;->requestConnectSIM(Landroid/os/Message;)V

    goto :goto_0

    .line 3327
    :pswitch_1
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/MediaTekRIL;->requestDisconnectOrPowerOffSIM(ILandroid/os/Message;)V

    goto :goto_0

    .line 3330
    :pswitch_2
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/MediaTekRIL;->requestPowerOnOrResetSIM(IILandroid/os/Message;)V

    goto :goto_0

    .line 3333
    :pswitch_3
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/MediaTekRIL;->requestDisconnectOrPowerOffSIM(ILandroid/os/Message;)V

    goto :goto_0

    .line 3336
    :pswitch_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/MediaTekRIL;->requestPowerOnOrResetSIM(IILandroid/os/Message;)V

    goto :goto_0

    .line 3339
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/MediaTekRIL;->requestTransferApdu(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 3322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public sendCNAPSS(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "cnapssString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2474
    const/16 v1, 0x830

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2476
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2477
    const-string/jumbo v2, " "

    .line 2476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2479
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2481
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2471
    return-void
.end method

.method public separateConnection(ILandroid/os/Message;)V
    .locals 3
    .param p1, "gsmIndex"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2263
    const/16 v1, 0x34

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2265
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2266
    const-string/jumbo v2, " "

    .line 2265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2268
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2269
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2272
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 2261
    return-void
.end method

.method public setArsiReportThreshold(ILandroid/os/Message;)V
    .locals 3
    .param p1, "threshold"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4877
    const/16 v1, 0xfb3

    .line 4876
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4879
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4880
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4886
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4875
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "avoidSYS"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4772
    const/16 v2, 0xfa3

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4775
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4778
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4779
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4781
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4770
    return-void

    .line 4779
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBandMode([ILandroid/os/Message;)V
    .locals 6
    .param p1, "bandMode"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2487
    const/16 v1, 0x41

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2489
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2490
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2491
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v2, p1, v4

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v2, p1, v5

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    const-string/jumbo v1, "RILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set band modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2496
    const-string/jumbo v2, " "

    .line 2495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2485
    return-void
.end method

.method public setBipPsType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 5257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBipPsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mBipPsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5259
    iput p1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mBipPsType:I

    .line 5255
    return-void
.end method

.method public setCLIP(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4272
    const/16 v1, 0x831

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4275
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4277
    if-eqz p1, :cond_0

    .line 4278
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4283
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4284
    const-string/jumbo v2, " "

    .line 4283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4270
    return-void

    .line 4280
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setCOLP(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 2417
    const/16 v1, 0x7d1

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2420
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2422
    if-eqz p1, :cond_0

    .line 2423
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2428
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2429
    const-string/jumbo v2, " "

    .line 2428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2431
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2414
    return-void

    .line 2425
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setCallIndication(IIILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "callId"    # I
    .param p3, "seqNumber"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 3998
    const/16 v1, 0x826

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4000
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4001
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4002
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4003
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4006
    const-string/jumbo v2, " "

    .line 4005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4006
    const-string/jumbo v2, ", "

    .line 4005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4006
    const-string/jumbo v2, ", "

    .line 4005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3996
    return-void
.end method

.method public setCdmaRegistrationSuspendEnabled(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 5180
    const/16 v2, 0xfaf

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5181
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5182
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5186
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5179
    return-void

    .line 5182
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "cb_set_type"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3812
    const/16 v1, 0x808

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3814
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3815
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3816
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3818
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3811
    return-void
.end method

.method public setCellBroadcastLanguageConfigInfo(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3822
    const/16 v1, 0x809

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3824
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3827
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3821
    return-void
.end method

.method public setDataCentric(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4628
    const-string/jumbo v1, "setDataCentric"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4629
    const/16 v1, 0x839

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4631
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4632
    if-eqz p1, :cond_0

    .line 4633
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4638
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4639
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4627
    return-void

    .line 4635
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setDataOnToMD(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4498
    const/16 v2, 0x83f

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4499
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4500
    .local v1, "type":I
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4501
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4504
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4504
    const-string/jumbo v3, ": "

    .line 4503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4496
    return-void

    .line 4499
    .end local v1    # "type":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public setEccServiceCategory(I)V
    .locals 3
    .param p1, "serviceCategory"    # I

    .prologue
    .line 4100
    const/16 v1, 0x828

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4102
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4103
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4106
    const-string/jumbo v2, " "

    .line 4105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4108
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4099
    return-void
.end method

.method public setEtws(ILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3799
    const/16 v1, 0x80c

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3801
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3802
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3807
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3798
    return-void
.end method

.method public setFDMode(IIILandroid/os/Message;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "parameter1"    # I
    .param p3, "parameter2"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4598
    const/16 v1, 0x80d

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4604
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4606
    if-eqz p1, :cond_0

    if-ne p1, v3, :cond_2

    .line 4607
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4608
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4620
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4597
    return-void

    .line 4609
    :cond_2
    if-ne p1, v5, :cond_3

    .line 4610
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4611
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4612
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 4613
    :cond_3
    if-ne p1, v4, :cond_1

    .line 4614
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4615
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4616
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4617
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setIMSEnabled(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 4570
    const/16 v1, 0x82e

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4572
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4573
    if-eqz p1, :cond_0

    .line 4574
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4579
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4580
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4569
    return-void

    .line 4576
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public setImsCallStatus(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "existed"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4651
    const/16 v2, 0x841

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4653
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4654
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4659
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4650
    return-void

    .line 4654
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 3148
    new-instance v6, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;

    invoke-direct {v6}, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;-><init>()V

    .local v6, "param":Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 3149
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/MediaTekRIL;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;)V

    .line 3147
    return-void
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Message;)V
    .locals 4
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "obj"    # Ljava/lang/Object;
    .param p7, "result"    # Landroid/os/Message;

    .prologue
    .line 3154
    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 3156
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    const-string/jumbo v2, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3158
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3159
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3160
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3161
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3162
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p6

    .line 3165
    check-cast v0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;

    .line 3166
    .local v0, "param":Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3167
    iget-object v3, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-boolean v2, v0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mCanHandleIms:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3168
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v3, v0, Lcom/mediatek/internal/telephony/dataconnection/IaExtendParam;->mDualApnPlmnList:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3172
    const-string/jumbo v3, ", apn:"

    .line 3171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3172
    const-string/jumbo v3, ", protocol:"

    .line 3171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3172
    const-string/jumbo v3, ", authType:"

    .line 3171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3173
    const-string/jumbo v3, ", username:"

    .line 3171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3173
    const-string/jumbo v3, ", password:"

    .line 3171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3173
    const-string/jumbo v3, " ,"

    .line 3171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3153
    return-void

    .line 3167
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setInstanceId(I)V
    .locals 1
    .param p1, "instanceId"    # I

    .prologue
    .line 5150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    .line 5149
    return-void
.end method

.method public setLocationUpdates(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2580
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2581
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2584
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 2578
    return-void
.end method

.method public setLteAccessStratumReport(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4526
    const/16 v2, 0x856

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4527
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4528
    .local v1, "type":I
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4529
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4532
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4532
    const-string/jumbo v3, ": "

    .line 4531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4533
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4525
    return-void

    .line 4527
    .end local v1    # "type":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public setLteUplinkDataTransfer(IILandroid/os/Message;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "interfaceId"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 4539
    const/16 v1, 0x857

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4540
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4541
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4542
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4545
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 4544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4546
    const-string/jumbo v2, " state = "

    .line 4544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4547
    const-string/jumbo v2, ", interfaceId = "

    .line 4544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4548
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4538
    return-void
.end method

.method public setMdnNumber(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "mdn"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4929
    const/16 v1, 0xfb1

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4931
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4936
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4927
    return-void
.end method

.method public setMeid(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "meid"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4916
    const/16 v1, 0xfad

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4918
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4923
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4914
    return-void
.end method

.method public setModemPower(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "power"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set Modem power as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2386
    if-eqz p1, :cond_0

    .line 2387
    const/16 v1, 0x7ec

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2393
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2394
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2381
    return-void

    .line 2390
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    const/16 v1, 0x7da

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0
.end method

.method public setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "catagory"    # I
    .param p2, "lockop"    # I
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "data_imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 3231
    const/16 v1, 0x7e3

    invoke-static {v1, p7}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3233
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNetworkLock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3236
    const-string/jumbo v2, ", "

    .line 3235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3236
    const-string/jumbo v2, ", "

    .line 3235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3238
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3239
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3240
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3241
    if-eqz p3, :cond_0

    .line 3242
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3246
    :goto_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3247
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3248
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3250
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3230
    return-void

    .line 3244
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 4325
    const/16 v1, 0x7e9

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4328
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4329
    const-string/jumbo v2, " "

    .line 4328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4329
    const-string/jumbo v2, ""

    .line 4328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4331
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4332
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4333
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4334
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4336
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4323
    return-void
.end method

.method public setNetworkSelectionModeSemiAutomatic(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 4407
    const/16 v1, 0x7e9

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4410
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4411
    const-string/jumbo v2, " "

    .line 4410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4411
    const-string/jumbo v2, ""

    .line 4410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4413
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4414
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4415
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4416
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4418
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4405
    return-void
.end method

.method public setOplmn(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oplmnInfo"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 4810
    const/16 v1, 0x81f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4811
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendOplmn, OPLMN is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4817
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4809
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 4434
    const/16 v1, 0x7f2

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4435
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 4436
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4437
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4444
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4433
    return-void

    .line 4439
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4440
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4441
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4442
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPhoneBookMemStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 3683
    const/16 v1, 0x800

    invoke-static {v1, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3684
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3685
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3686
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> :::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3689
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3682
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2558
    const/16 v1, 0x49

    .line 2557
    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2560
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2563
    iget v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreferredNetworkType:I

    iput v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreviousPreferredType:I

    .line 2564
    iput p1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mPreferredNetworkType:I

    .line 2567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2568
    const-string/jumbo v2, " : "

    .line 2567
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2571
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2556
    return-void
.end method

.method public setRegistrationSuspendEnabled(ILandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5158
    const/16 v1, 0x810

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5159
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5160
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5164
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5157
    return-void
.end method

.method public setRemoveRestrictEutranMode(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4512
    const/16 v2, 0x840

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4513
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 4514
    .local v1, "type":I
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4515
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4518
    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4518
    const-string/jumbo v3, ": "

    .line 4517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4519
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4510
    return-void

    .line 4513
    .end local v1    # "type":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_0
.end method

.method public setResumeCdmaRegistration(Landroid/os/Message;)V
    .locals 4
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 5191
    const/16 v1, 0xfae

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5192
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5196
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5190
    return-void
.end method

.method public setResumeRegistration(ILandroid/os/Message;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5169
    const/16 v1, 0x811

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5170
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5171
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5175
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5168
    return-void
.end method

.method public setScri(ZLandroid/os/Message;)V
    .locals 4
    .param p1, "forceRelease"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4585
    const/16 v2, 0x7e4

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4587
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4589
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4590
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4592
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4584
    return-void

    .line 4590
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSpeechCodecInfo(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4133
    const/16 v2, 0x83e

    invoke-static {v2, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4136
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4137
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4140
    const-string/jumbo v2, " "

    .line 4139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4141
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4132
    return-void

    .line 4137
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSrvccCallContextTransfer(I[Lcom/mediatek/internal/telephony/SrvccCallContext;)V
    .locals 4
    .param p1, "numberOfCall"    # I
    .param p2, "callList"    # [Lcom/mediatek/internal/telephony/SrvccCallContext;

    .prologue
    const/4 v3, 0x0

    .line 4672
    const/16 v2, 0x84b

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 4674
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 4675
    :cond_0
    return-void

    .line 4678
    :cond_1
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    mul-int/lit8 v3, p1, 0x9

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4679
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4680
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 4681
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getCallId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4682
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getCallMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4683
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getCallDirection()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4684
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getCallState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4685
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getEccCategory()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4686
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getNumberType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4687
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4688
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4689
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/SrvccCallContext;->getCliValidity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4680
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4693
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4696
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4671
    return-void
.end method

.method public setStkEvdlCallByAP(ILandroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3915
    const/16 v1, 0x81b

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3916
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3917
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3918
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3919
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3912
    return-void
.end method

.method public setStkSwitchMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 5246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStkSwitchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mStkSwitchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5248
    iput p1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mStkSwitchMode:I

    .line 5244
    return-void
.end method

.method public setStkUtkMode(ILandroid/os/Message;)V
    .locals 3
    .param p1, "stkUtkMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 5136
    const/16 v1, 0x84f

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5137
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5138
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5141
    const-string/jumbo v2, " stkUtkMode: "

    .line 5140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5143
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5135
    return-void
.end method

.method public setSvlteRatMode(IIIIIZLandroid/os/Message;)V
    .locals 3
    .param p1, "radioTechMode"    # I
    .param p2, "preSvlteMode"    # I
    .param p3, "svlteMode"    # I
    .param p4, "preRoamingMode"    # I
    .param p5, "roamingMode"    # I
    .param p6, "is3GDualModeCard"    # Z
    .param p7, "response"    # Landroid/os/Message;

    .prologue
    .line 5114
    const/16 v1, 0x848

    invoke-static {v1, p7}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5115
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5116
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5117
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5118
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5119
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5120
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5121
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5124
    const-string/jumbo v2, " radioTechMode: "

    .line 5123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5125
    const-string/jumbo v2, " preSvlteMode: "

    .line 5123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5125
    const-string/jumbo v2, " svlteMode: "

    .line 5123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5126
    const-string/jumbo v2, " preRoamingMode: "

    .line 5123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5126
    const-string/jumbo v2, " roamingMode: "

    .line 5123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5127
    const-string/jumbo v2, " is3GDualModeCard: "

    .line 5123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5129
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5113
    return-void

    .line 5121
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTrm(ILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3881
    const/16 v1, 0x7fb

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3883
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3884
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3887
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3880
    return-void
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 2171
    const/16 v1, 0x7a

    invoke-static {v1, p5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2173
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2174
    const-string/jumbo v2, " slot: "

    .line 2173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2174
    const-string/jumbo v2, " appIndex: "

    .line 2173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2175
    const-string/jumbo v2, " subId: "

    .line 2173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2175
    const-string/jumbo v2, " subStatus: "

    .line 2173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2177
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2178
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2179
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2180
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2182
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2169
    return-void
.end method

.method public setViaTRM(ILandroid/os/Message;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 4731
    const/16 v1, 0xfb2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4733
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4734
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4739
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4730
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 2348
    const-string/jumbo v8, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/MediaTekRIL;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2344
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "interfaceId"    # Ljava/lang/String;
    .param p9, "result"    # Landroid/os/Message;

    .prologue
    .line 2357
    const/16 v1, 0x1b

    invoke-static {v1, p9}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2359
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2362
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2363
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2364
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2365
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2366
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2367
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2370
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2373
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2373
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2373
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2374
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2374
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2374
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2375
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2375
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2375
    const-string/jumbo v2, " "

    .line 2372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2377
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2355
    return-void
.end method

.method public startDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2294
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    monitor-enter v2

    .line 2295
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    .line 2296
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->isStart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2297
    const/16 v1, 0x31

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2299
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2300
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->start()V

    .line 2301
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->add(Lcom/android/internal/telephony/RILRequest;)V

    .line 2302
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2303
    const-string/jumbo v1, "send start dtmf"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 2291
    return-void

    .line 2308
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->isStart()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2294
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public stopDtmf(Landroid/os/Message;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2320
    iget-object v2, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    monitor-enter v2

    .line 2321
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->hasSendChldRequest()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    .line 2322
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->isStart()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2323
    const/16 v1, 0x32

    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2325
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->stop()V

    .line 2326
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->add(Lcom/android/internal/telephony/RILRequest;)V

    .line 2327
    iget-object v1, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 2328
    const-string/jumbo v1, "send stop dtmf"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 2317
    return-void

    .line 2333
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DTMF status conflict, want to start DTMF when status is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDtmfReqQueue:Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->isStart()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2320
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public storeModemType(ILandroid/os/Message;)V
    .locals 3
    .param p1, "modemType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 3897
    const/16 v1, 0x812

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3898
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3899
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3896
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2195
    const/16 v1, 0x8

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2197
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2199
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2200
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 2194
    return-void
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 2188
    const-string/jumbo v0, "supplyNetworkDepersonalization: type is ignored on MTK!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/MediaTekRIL;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 2187
    return-void
.end method

.method public switchAntenna(II)V
    .locals 3
    .param p1, "callState"    # I
    .param p2, "ratMode"    # I

    .prologue
    .line 5270
    const/16 v1, 0x850

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5271
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5272
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5273
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5277
    const-string/jumbo v2, "> "

    .line 5276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5277
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 5276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5277
    const-string/jumbo v2, " callState: "

    .line 5276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5278
    const-string/jumbo v2, ", ratMode:"

    .line 5276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5281
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5269
    return-void
.end method

.method public switchCardType(I)V
    .locals 3
    .param p1, "cardtype"    # I

    .prologue
    .line 5289
    const/16 v1, 0x853

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 5290
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5291
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5294
    const-string/jumbo v2, "> "

    .line 5293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5294
    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    .line 5293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5294
    const-string/jumbo v2, " cardtype: "

    .line 5293
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5296
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 5288
    return-void
.end method

.method public switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 2225
    const/16 v1, 0xf

    .line 2224
    invoke-static {v1, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 2227
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 2230
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->handleChldRelatedRequest(Lcom/android/internal/telephony/RILRequest;)V

    .line 2222
    return-void
.end method

.method public syncNotifyDataCallList(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "dcList"    # Landroid/os/AsyncResult;

    .prologue
    .line 5081
    const-string/jumbo v0, "[C2K_IRAT_RIL] notify data call list!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 5082
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL;->mDataNetworkStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 5080
    return-void
.end method

.method public updateImsRegistrationStatus(III)V
    .locals 3
    .param p1, "regState"    # I
    .param p2, "regType"    # I
    .param p3, "reason"    # I

    .prologue
    .line 4714
    const/16 v1, 0x84c

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4716
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4717
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4718
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4719
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4724
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4713
    return-void
.end method

.method public vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 4148
    const/16 v1, 0x842

    invoke-static {v1, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 4150
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4151
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4153
    if-nez p3, :cond_0

    .line 4154
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4162
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 4164
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 4147
    return-void

    .line 4156
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4157
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4158
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4159
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method

.method public writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/internal/telephony/PhbEntry;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 3421
    const/16 v1, 0x7dd

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 3423
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/PhbEntry;->type:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3424
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/PhbEntry;->index:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3425
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/PhbEntry;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3426
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget v2, p1, Lcom/android/internal/telephony/PhbEntry;->ton:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3427
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    iget-object v2, p1, Lcom/android/internal/telephony/PhbEntry;->alphaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3431
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3420
    return-void
.end method

.method public writeUPBGrpEntry(I[ILandroid/os/Message;)V
    .locals 5
    .param p1, "adnIndex"    # I
    .param p2, "grpIds"    # [I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 3528
    const/16 v3, 0x7f8

    invoke-static {v3, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 3529
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    array-length v1, p2

    .line 3530
    .local v1, "nLen":I
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3531
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3533
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3535
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeUPBGrpEntry nLen is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MediaTekRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 3537
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MediaTekRIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 3527
    return-void
.end method
