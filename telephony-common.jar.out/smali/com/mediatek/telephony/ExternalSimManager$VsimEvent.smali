.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsimEvent"
.end annotation


# static fields
.field public static final DEFAULT_MAX_DATA_LENGTH:I = 0x5000


# instance fields
.field private mData:[B

.field private mDataLen:I

.field private mEventMaxDataLen:I

.field private mMessageId:I

.field private mReadOffset:I

.field private mSlotId:I

.field private mTransactionId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I

    .prologue
    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 388
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "slotId"    # I

    .prologue
    .line 400
    const/16 v0, 0x5000

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(IIII)V

    .line 399
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "messageId"    # I
    .param p3, "length"    # I
    .param p4, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/16 v0, 0x5000

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 412
    iput p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    .line 413
    iput p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    .line 414
    iput p4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    .line 415
    iput p3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    .line 416
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    .line 417
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 418
    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    .line 411
    return-void
.end method


# virtual methods
.method public getByte()I
    .locals 3

    .prologue
    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "ret":I
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 615
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 617
    return v0

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getBytes(I)[B
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 621
    monitor-enter p0

    .line 622
    :try_start_0
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    .line 623
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 626
    :cond_0
    :try_start_1
    new-array v1, p1, [B

    .line 628
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 629
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 630
    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 632
    return-object v1

    .line 621
    .end local v0    # "i":I
    .end local v1    # "ret":[B
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 545
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    new-array v0, v1, [B

    .line 546
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 547
    return-object v0
.end method

.method public getDataLen()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    return v0
.end method

.method public getFirstSlotId()I
    .locals 5

    .prologue
    .line 572
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 573
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 575
    const-string/jumbo v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFirstSlotId, slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 576
    const-string/jumbo v4, ", slot bit mapping = "

    .line 575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 576
    invoke-virtual {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v4

    .line 575
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v0

    .line 573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getInt()I
    .locals 4

    .prologue
    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "ret":I
    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 591
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 592
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 591
    or-int/2addr v1, v2

    .line 593
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 591
    or-int/2addr v1, v2

    .line 594
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 591
    or-int v0, v1, v2

    .line 595
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 598
    return v0

    .line 589
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mMessageId:I

    return v0
.end method

.method public getShort()I
    .locals 4

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "ret":I
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 605
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 607
    return v0

    .line 603
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSlotBitMask()I
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mSlotId:I

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 637
    new-array v0, p1, [B

    .line 639
    .local v0, "buf":[B
    monitor-enter p0

    .line 640
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 641
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mReadOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 644
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 639
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTransactionId()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mTransactionId:I

    return v0
.end method

.method public putByte(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 450
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 451
    const/4 v0, -0x1

    return v0

    .line 454
    :cond_0
    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 456
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putBytes([B)I
    .locals 5
    .param p1, "value"    # [B

    .prologue
    const/4 v4, 0x0

    .line 485
    monitor-enter p0

    .line 486
    :try_start_0
    array-length v0, p1

    .line 488
    .local v0, "len":I
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    .line 489
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 492
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 493
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 495
    return v4

    .line 485
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putCapability(III)I
    .locals 2
    .param p1, "multiSim"    # I
    .param p2, "vsimSupported"    # I
    .param p3, "allowedSlots"    # I

    .prologue
    .line 499
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x10

    if-le v0, v1, :cond_0

    .line 500
    const/4 v0, -0x1

    return v0

    .line 503
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 504
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 505
    invoke-virtual {p0, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 506
    invoke-virtual {p0, p3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public putInt(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x4

    if-le v1, v2, :cond_0

    .line 424
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 427
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 428
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 429
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 432
    const/4 v1, 0x0

    return v1

    .line 422
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putPaddingCapability()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0x10

    if-le v0, v1, :cond_0

    .line 512
    const/4 v0, -0x1

    return v0

    .line 515
    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 516
    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 517
    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 518
    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 519
    return v2
.end method

.method public putPaddingUiccCommand()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0xc

    if-le v0, v1, :cond_0

    .line 535
    const/4 v0, -0x1

    return v0

    .line 538
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 539
    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 541
    return v2
.end method

.method public putShort(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x2

    if-le v1, v2, :cond_0

    .line 438
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 441
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 442
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 443
    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 446
    const/4 v1, 0x0

    return v1

    .line 436
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public putString(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "len"    # I

    .prologue
    const/4 v7, 0x0

    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v4, p2

    if-le v3, v4, :cond_0

    .line 464
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 467
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 468
    .local v2, "s":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 469
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 470
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 481
    return v7

    .line 472
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, p2, v3

    .line 473
    .local v1, "remain":I
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 474
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 476
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mData:[B

    iget v4, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 477
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "i":I
    .end local v1    # "remain":I
    .end local v2    # "s":[B
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public putUiccCommand(I[B)I
    .locals 2
    .param p1, "commandLen"    # I
    .param p2, "command"    # [B

    .prologue
    .line 523
    iget v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mDataLen:I

    iget v1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->mEventMaxDataLen:I

    add-int/lit8 v1, v1, -0xc

    if-le v0, v1, :cond_0

    .line 524
    const/4 v0, -0x1

    return v0

    .line 527
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 528
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 529
    invoke-virtual {p0, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putBytes([B)I

    .line 530
    const/4 v0, 0x0

    return v0
.end method
