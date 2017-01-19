.class public Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;
.super Landroid/os/Handler;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VsimEvenHandler"
.end annotation


# instance fields
.field private mHasNotifyEnableEvnetToModem:Z

.field private mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field private mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method static synthetic -wrap0(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 0
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    const/4 v0, 0x0

    .line 891
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 892
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 893
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mHasNotifyEnableEvnetToModem:Z

    .line 891
    return-void
.end method

.method private dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1165
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getMessageId()I

    move-result v1

    .line 1167
    .local v1, "msgId":I
    const-string/jumbo v2, "ExternalSimManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VsimEvenHandler handleMessage: msgId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    sparse-switch v1, :sswitch_data_0

    .line 1264
    const-string/jumbo v2, "ExternalSimManager"

    const-string/jumbo v3, "VsimEvenHandler handleMessage: default"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1181
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1185
    :sswitch_2
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto :goto_0

    .line 1193
    :sswitch_3
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1197
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1198
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1199
    const-string/jumbo v3, "gsm.external.sim.inserted"

    const-string/jumbo v4, "0"

    .line 1197
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1201
    .local v0, "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1202
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1207
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1214
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1215
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1220
    :sswitch_5
    invoke-direct {p0, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 1223
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1224
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1225
    const-string/jumbo v3, "gsm.external.sim.inserted"

    const-string/jumbo v4, "0"

    .line 1223
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1228
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto :goto_0

    .line 1233
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_6
    invoke-direct {p0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->getMdWaitingFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1240
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1241
    invoke-direct {p0, v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto :goto_0

    .line 1247
    :sswitch_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1248
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v2

    .line 1249
    const-string/jumbo v3, "gsm.external.sim.inserted"

    const-string/jumbo v4, "0"

    .line 1247
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .restart local v0    # "inserted":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1257
    .end local v0    # "inserted":Ljava/lang/String;
    :sswitch_8
    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    goto/16 :goto_0

    .line 1261
    :sswitch_9
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    goto/16 :goto_0

    .line 1169
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_6
        0x5 -> :sswitch_4
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_0
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method

.method private getMdWaitingFlag()Z
    .locals 3

    .prologue
    .line 913
    const-string/jumbo v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/ExternalSimManager;->-get0(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v0}, Lcom/mediatek/telephony/ExternalSimManager;->-get0(Lcom/mediatek/telephony/ExternalSimManager;)Z

    move-result v0

    return v0
.end method

.method private handleEventRequest(ILcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v10, 0x0

    .line 918
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v5

    .line 923
    .local v5, "slotId":I
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v4

    .line 925
    .local v4, "simType":I
    const/4 v3, 0x0

    .line 927
    .local v3, "result":I
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler First slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", simType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    packed-switch p1, :pswitch_data_0

    .line 1028
    :goto_0
    new-instance v1, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1029
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v7

    .line 1030
    invoke-virtual {p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v8

    const/16 v9, 0x3eb

    .line 1028
    invoke-direct {v1, v7, v9, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1031
    .local v1, "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-virtual {v1, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1032
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1034
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler eventHandlerByType: type["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] end"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 932
    .end local v1    # "eventResponse":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 933
    const/4 v3, 0x0

    .line 939
    :goto_1
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 940
    .local v6, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 942
    .local v0, "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    .line 945
    const-string/jumbo v7, "ExternalSimManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VsimEvenHandler set default data to subId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 949
    const-string/jumbo v7, "gsm.external.sim.enabled"

    const-string/jumbo v8, "1"

    .line 948
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v6    # "subId":I
    :cond_1
    const/4 v3, -0x2

    goto :goto_1

    .line 954
    :pswitch_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 955
    const-string/jumbo v7, "gsm.external.sim.enabled"

    const-string/jumbo v8, "0"

    .line 954
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 957
    const-string/jumbo v7, "gsm.external.sim.inserted"

    const-string/jumbo v8, "0"

    .line 956
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 966
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    .line 968
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 974
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 975
    const-string/jumbo v7, "gsm.external.sim.inserted"

    .line 976
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 974
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 978
    const-string/jumbo v7, "persist.radio.external.sim"

    .line 979
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 977
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 982
    .restart local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    .line 985
    .local v2, "mCPhoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 986
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 987
    const/4 v2, 0x0

    .line 989
    :cond_2
    const/16 v7, 0xb

    if-ne v2, v7, :cond_3

    .line 990
    const/4 v2, 0x1

    .line 994
    :cond_3
    if-ne v5, v2, :cond_4

    .line 996
    const-string/jumbo v7, "ExternalSimManager"

    const-string/jumbo v8, "VsimEvenHandler no need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 998
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Lcom/mediatek/internal/telephony/RadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1002
    :cond_4
    const-string/jumbo v7, "ExternalSimManager"

    const-string/jumbo v8, "VsimEvenHandler need to do capablity switch"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1005
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 1006
    .restart local v6    # "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 1007
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1009
    .end local v6    # "subId":I
    :cond_5
    const/4 v3, -0x2

    goto/16 :goto_0

    .line 1016
    .end local v0    # "ctrl":Lcom/android/internal/telephony/SubscriptionController;
    .end local v2    # "mCPhoneId":I
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 1017
    const-string/jumbo v7, "gsm.external.sim.inserted"

    const-string/jumbo v8, "0"

    .line 1016
    invoke-static {v5, v7, v8}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v7, p2}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1023
    invoke-direct {p0, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->setMdWaitingFlag(Z)V

    goto/16 :goto_0

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleGetPlatformCapability(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1038
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v2

    .line 1039
    .local v2, "eventId":I
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getInt()I

    move-result v8

    .line 1041
    .local v8, "simType":I
    new-instance v6, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1042
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    .line 1044
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v10

    .line 1043
    const/16 v11, 0x3ea

    .line 1041
    invoke-direct {v6, v9, v11, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1046
    .local v6, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1047
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1053
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    .line 1054
    .local v1, "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_1

    .line 1055
    invoke-virtual {v6, v13}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1065
    :goto_1
    const-string/jumbo v9, "ro.mtk_external_sim_support"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1071
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    .line 1073
    .local v7, "simCount":I
    const-string/jumbo v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetPlatformCapability simType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1074
    const-string/jumbo v11, ", simCount: "

    .line 1073
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    if-ne v8, v13, :cond_4

    .line 1077
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1117
    :goto_2
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v6}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1037
    return-void

    .line 1049
    .end local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    .end local v7    # "simCount":I
    :cond_0
    const/4 v9, -0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_0

    .line 1056
    .restart local v1    # "config":Landroid/telephony/TelephonyManager$MultiSimVariants;
    :cond_1
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_2

    .line 1057
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1058
    :cond_2
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_3

    .line 1059
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1061
    :cond_3
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto :goto_1

    .line 1079
    .restart local v7    # "simCount":I
    :cond_4
    sget-object v9, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v1, v9, :cond_b

    .line 1080
    const/4 v4, 0x0

    .line 1081
    .local v4, "isCdmaCard":I
    const/4 v5, 0x0

    .line 1083
    .local v5, "isHasCard":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v7, :cond_8

    .line 1084
    sget-object v9, Lcom/mediatek/telephony/ExternalSimManager;->PROPERTY_RIL_FULL_UICC_TYPE:[Ljava/lang/String;

    aget-object v9, v9, v3

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "cardType":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1086
    shl-int v9, v13, v3

    or-int/2addr v5, v9

    .line 1089
    :cond_5
    const-string/jumbo v9, "CSIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1090
    const-string/jumbo v9, "RUIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1089
    if-nez v9, :cond_6

    .line 1090
    const-string/jumbo v9, "UIM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1089
    if-eqz v9, :cond_7

    .line 1091
    :cond_6
    shl-int v9, v13, v3

    or-int/2addr v4, v9

    .line 1083
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1095
    .end local v0    # "cardType":Ljava/lang/String;
    :cond_8
    const-string/jumbo v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleGetPlatformCapability isCdmaCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1096
    const-string/jumbo v11, ", isHasCard: "

    .line 1095
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-nez v5, :cond_9

    .line 1100
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1101
    :cond_9
    if-nez v4, :cond_a

    .line 1103
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1106
    :cond_a
    shl-int v9, v13, v7

    add-int/lit8 v9, v9, -0x1

    xor-int/2addr v9, v4

    invoke-virtual {v6, v9}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2

    .line 1112
    .end local v3    # "i":I
    .end local v4    # "isCdmaCard":I
    .end local v5    # "isHasCard":I
    :cond_b
    invoke-virtual {v6, v12}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    goto/16 :goto_2
.end method

.method private handleServiceStateRequest(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V
    .locals 12
    .param p1, "event"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .prologue
    .line 1121
    const/4 v4, 0x0

    .line 1122
    .local v4, "result":I
    const/4 v8, -0x1

    .line 1123
    .local v8, "voiceRejectCause":I
    const/4 v1, -0x1

    .line 1125
    .local v1, "dataRejectCause":I
    new-instance v3, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    .line 1126
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getTransactionId()I

    move-result v9

    .line 1128
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getSlotBitMask()I

    move-result v10

    .line 1127
    const/16 v11, 0x3ef

    .line 1125
    invoke-direct {v3, v9, v11, v10}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;-><init>(III)V

    .line 1129
    .local v3, "response":Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->isReady()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1131
    const-string/jumbo v9, "phoneEx"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 1130
    invoke-static {v9}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v7

    .line 1132
    .local v7, "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v7, :cond_0

    .line 1135
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->getFirstSlotId()I

    move-result v9

    .line 1134
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v6

    .line 1136
    .local v6, "subId":I
    invoke-interface {v7, v6}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1137
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 1138
    .local v5, "ss":Landroid/telephony/ServiceState;
    const-string/jumbo v9, "ExternalSimManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleServiceStateRequest subId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1139
    const-string/jumbo v11, ", ss = "

    .line 1138
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1139
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1138
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRejectCause()I

    move-result v8

    .line 1141
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRejectCause()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1153
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "ss":Landroid/telephony/ServiceState;
    .end local v6    # "subId":I
    .end local v7    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1155
    invoke-virtual {v3, v8}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1157
    invoke-virtual {v3, v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;->putInt(I)I

    .line 1159
    iget-object v9, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v9, v3}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->writeEvent(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)I

    .line 1120
    return-void

    .line 1142
    .restart local v7    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :catch_0
    move-exception v2

    .line 1143
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "ExternalSimManager"

    const-string/jumbo v10, "RemoteException!!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v4, -0x1

    .line 1145
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1149
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "telEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_1
    const/4 v4, -0x2

    goto :goto_0
.end method

.method private setDataStream(Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    .locals 2
    .param p1, "vsimAdpatorIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .param p2, "vsimRilIo"    # Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimAdaptorIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 903
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->mVsimRilIo:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 904
    const-string/jumbo v0, "ExternalSimManager"

    const-string/jumbo v1, "VsimEvenHandler setDataStream done."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return-void
.end method

.method private setMdWaitingFlag(Z)V
    .locals 3
    .param p1, "isWaiting"    # Z

    .prologue
    .line 908
    const-string/jumbo v0, "ExternalSimManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMdWaitingFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v0, p1}, Lcom/mediatek/telephony/ExternalSimManager;->-set0(Lcom/mediatek/telephony/ExternalSimManager;Z)Z

    .line 907
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 898
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;

    invoke-direct {p0, v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->dispatchCallback(Lcom/mediatek/telephony/ExternalSimManager$VsimEvent;)V

    .line 897
    return-void
.end method
