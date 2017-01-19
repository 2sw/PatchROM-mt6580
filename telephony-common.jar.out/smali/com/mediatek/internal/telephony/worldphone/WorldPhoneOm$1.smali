.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 268
    const-string/jumbo v13, "[Receiver]+"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "action":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 272
    const-string/jumbo v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 273
    const-string/jumbo v13, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "simStatus":Ljava/lang/String;
    const-string/jumbo v13, "slot"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 275
    .local v11, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "slotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " simStatus: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " sMajorSim:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v13, "IMSI"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 278
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set14(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 279
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get32()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 280
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get21()[Lcom/android/internal/telephony/Phone;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    aput-object v14, v13, v11

    .line 286
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    aget-object v13, v13, v11

    if-eqz v13, :cond_3

    .line 287
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get10()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-virtual {v14}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    .line 292
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v14, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap3(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I

    move-result v14

    aput v14, v13, v11

    .line 293
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sImsi["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    if-ne v11, v13, :cond_9

    .line 297
    const-string/jumbo v13, "Major SIM"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set15(I)I

    .line 299
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v13

    aget-boolean v13, v13, v11

    if-eqz v13, :cond_0

    .line 300
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    .line 301
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get33()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get23()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 303
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v14, 0x65

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 313
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v13

    aget-boolean v13, v13, v11

    if-eqz v13, :cond_1

    .line 314
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    .line 315
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 316
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IMSI fot slot"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " now ready, resuming PLMN:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 317
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    .line 316
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 317
    const-string/jumbo v14, " with ID:"

    .line 316
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 317
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get29()[I

    move-result-object v14

    aget v14, v14, v11

    .line 316
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap11(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 580
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_1
    :goto_1
    const-string/jumbo v13, "[Receiver]-"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 267
    return-void

    .line 283
    .restart local v10    # "simStatus":Ljava/lang/String;
    .restart local v11    # "slotId":I
    :cond_2
    const-string/jumbo v13, "Null sUiccController"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 284
    return-void

    .line 289
    :cond_3
    const-string/jumbo v13, "Null sIccRecordsInstance"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 290
    return-void

    .line 304
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get23()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v14, 0x64

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto :goto_0

    .line 307
    :cond_5
    const-string/jumbo v13, "Region unknown"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_6
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get33()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_7

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get33()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 310
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v14, 0x64

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap7(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto/16 :goto_0

    .line 320
    :cond_8
    const-string/jumbo v13, "sNwPlmnStrings is Null"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_9
    const-string/jumbo v13, "Not major SIM or in maual selection mode"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v11

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap4(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v13

    aget-boolean v13, v13, v11

    if-eqz v13, :cond_1

    .line 327
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    .line 328
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IMSI fot slot"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " now ready, resuming with ID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 329
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get29()[I

    move-result-object v14

    aget v14, v14, v11

    .line 328
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    aget-object v13, v13, v11

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get29()[I

    move-result-object v14

    aget v14, v14, v11

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 333
    :cond_a
    const-string/jumbo v13, "ABSENT"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 334
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    aput-object v14, v13, v11

    .line 336
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v13

    const/4 v14, 0x1

    aput-boolean v14, v13, v11

    .line 339
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get30()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    .line 340
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v13

    const/4 v14, 0x0

    aput v14, v13, v11

    .line 341
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    if-ne v11, v13, :cond_b

    .line 342
    const-string/jumbo v13, "Major SIM removed, no world phone service"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap10(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 344
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set15(I)I

    .line 345
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set2(I)I

    .line 346
    const/16 v13, -0x63

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    goto/16 :goto_1

    .line 348
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SIM"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not major SIM"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    :cond_c
    const-string/jumbo v13, "READY"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "reset sIsInvalidSim by solt:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    goto/16 :goto_1

    .line 355
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_d
    const-string/jumbo v13, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set12(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 358
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 359
    const-string/jumbo v13, "slot"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 360
    .restart local v11    # "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set6(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set16(I)I

    .line 362
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set11(I)I

    .line 363
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set10(I)I

    .line 364
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set1(I)I

    .line 365
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set9(I)I

    .line 366
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set8(I)I

    .line 367
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "slotId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get9()[I

    move-result-object v14

    aget v14, v14, v11

    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 368
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sMajorSim: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sPlmnSs: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 371
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sVoiceRegState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get34()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 372
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sRilVoiceRegState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get27()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 373
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sRilVoiceRadioTech: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get26()I

    move-result v14

    invoke-static {v14}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 374
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sDataRegState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get5()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 375
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sRilDataRegState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get25()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 376
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sRilDataRadioTech: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get28()Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get24()I

    move-result v14

    invoke-static {v14}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 377
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sIsAutoSelectEnable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 378
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sRadioTechModeForWp: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get22()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    if-ne v11, v13, :cond_1

    .line 383
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get12()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap1(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap5(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 386
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 387
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap10(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 389
    const-string/jumbo v13, "reset sIsInvalidSim"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    goto/16 :goto_1

    .line 393
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap0(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 394
    const-string/jumbo v13, "reset sIsInvalidSim in manual mode"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get17()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v11

    goto/16 :goto_1

    .line 401
    .end local v11    # "slotId":I
    :cond_10
    const-string/jumbo v13, "Null sServiceState"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 404
    :cond_11
    const-string/jumbo v13, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, "ci":Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v13

    if-nez v13, :cond_12

    .line 408
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get4()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v2, v13, v14

    .line 412
    .local v2, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :goto_2
    if-nez v2, :cond_13

    .line 413
    const-string/jumbo v13, "SHUTDOWN_IPO getActiveCi fail, switch not executed!"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 414
    return-void

    .line 410
    .local v2, "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap2(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    .local v2, "ci":Lcom/android/internal/telephony/CommandsInterface;
    goto :goto_2

    .line 418
    :cond_13
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get6()I

    move-result v13

    const/16 v14, 0x64

    if-ne v13, v14, :cond_15

    .line 419
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 420
    const/4 v13, 0x5

    invoke-static {v2, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 423
    const-string/jumbo v13, "Reload to FDD CSFB modem"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    :cond_14
    const/4 v13, 0x3

    invoke-static {v2, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 428
    const-string/jumbo v13, "Reload to WG modem"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 430
    :cond_15
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get6()I

    move-result v13

    const/16 v14, 0x65

    if-ne v13, v14, :cond_1

    .line 431
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 432
    const/4 v13, 0x6

    invoke-static {v2, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 435
    const-string/jumbo v13, "Reload to TDD CSFB modem"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 437
    :cond_16
    const/4 v13, 0x4

    invoke-static {v2, v13}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 440
    const-string/jumbo v13, "Reload to TG modem"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 443
    .end local v2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_17
    const-string/jumbo v13, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 445
    const-string/jumbo v13, "mdType"

    const/4 v14, 0x0

    .line 444
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 446
    .local v12, "toModem":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "toModem: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 447
    const/4 v13, 0x3

    if-eq v12, v13, :cond_18

    .line 448
    const/4 v13, 0x4

    if-ne v12, v13, :cond_19

    .line 451
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 449
    :cond_19
    const/4 v13, 0x5

    if-eq v12, v13, :cond_18

    .line 450
    const/4 v13, 0x6

    if-eq v12, v13, :cond_18

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v12}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 455
    .end local v12    # "toModem":I
    :cond_1a
    const-string/jumbo v13, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 456
    const-string/jumbo v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 457
    const-string/jumbo v13, "Leave flight mode"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 458
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set4(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get1()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 460
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get13()[Z

    move-result-object v13

    const/4 v14, 0x0

    aput-boolean v14, v13, v7

    .line 459
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 463
    .end local v7    # "i":I
    :cond_1b
    const-string/jumbo v13, "Enter flight mode"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 464
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get1()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 465
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get8()[Z

    move-result-object v13

    const/4 v14, 0x1

    aput-boolean v14, v13, v7

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 468
    .end local v7    # "i":I
    :cond_1c
    const-string/jumbo v13, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 470
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap6(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 473
    :cond_1d
    const-string/jumbo v13, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 474
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 475
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 477
    :cond_1e
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 479
    :cond_1f
    const-string/jumbo v13, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 498
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set7(I)I

    goto/16 :goto_1

    .line 500
    :cond_20
    const-string/jumbo v13, "android.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 501
    const-string/jumbo v13, "FAKE_USER_TYPE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 502
    .local v5, "fakeUserType":I
    const-string/jumbo v13, "EXTRA_FAKE_REGION"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 503
    .local v4, "fakeRegion":I
    const/4 v6, 0x0

    .line 505
    .local v6, "hasChanged":Z
    if-nez v5, :cond_21

    if-nez v4, :cond_21

    .line 506
    const-string/jumbo v13, "Leave ADB Test mode"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 509
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get19()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 510
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 511
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 512
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap8()V

    goto/16 :goto_1

    .line 514
    :cond_21
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set5(I)I

    .line 515
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    const/16 v14, -0x63

    if-eq v13, v14, :cond_28

    .line 516
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_28

    .line 518
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get11()[Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get14()I

    move-result v14

    aget-object v8, v13, v14

    .line 519
    .local v8, "imsi":Ljava/lang/String;
    if-eqz v8, :cond_22

    const-string/jumbo v13, ""

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 536
    :cond_22
    const-string/jumbo v13, "Imsi of sMajorSim is unknown"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 539
    :goto_5
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get16()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v3, v13, v14

    .line 540
    .local v3, "currentMcc":Ljava/lang/String;
    if-eqz v3, :cond_23

    const-string/jumbo v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_23

    .line 541
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-ge v13, v14, :cond_25

    .line 542
    :cond_23
    const-string/jumbo v13, "Invalid sNwPlmnStrings"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 559
    .end local v3    # "currentMcc":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    :goto_6
    if-eqz v6, :cond_1

    .line 560
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sPlmnType1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 561
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sPlmnType1Ext:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get19()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 562
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sPlmnType3:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 563
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sMccDomestic:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-virtual {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    goto/16 :goto_1

    .line 520
    .restart local v8    # "imsi":Ljava/lang/String;
    :cond_24
    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 521
    packed-switch v5, :pswitch_data_0

    .line 533
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown fakeUserType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 523
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get18()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v6, 0x1

    .line 525
    goto/16 :goto_5

    .line 528
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get20()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    const/4 v6, 0x1

    .line 530
    goto/16 :goto_5

    .line 544
    .restart local v3    # "currentMcc":Ljava/lang/String;
    :cond_25
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 545
    const/4 v13, 0x1

    if-ne v4, v13, :cond_26

    .line 546
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    const/4 v6, 0x1

    goto/16 :goto_6

    .line 548
    :cond_26
    const/4 v13, 0x2

    if-ne v4, v13, :cond_27

    .line 549
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-get15()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 550
    const/4 v6, 0x1

    goto/16 :goto_6

    .line 552
    :cond_27
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown fakeRegion:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 556
    .end local v3    # "currentMcc":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_28
    const-string/jumbo v13, "sMajorSim is Unknown or Capability OFF"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 568
    .end local v4    # "fakeRegion":I
    .end local v5    # "fakeUserType":I
    .end local v6    # "hasChanged":Z
    :cond_29
    const-string/jumbo v13, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 569
    const-string/jumbo v13, "android.bluetooth.profile.extra.STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 570
    .local v9, "sapState":I
    const/4 v13, 0x2

    if-ne v9, v13, :cond_2a

    .line 571
    const-string/jumbo v13, "BT_SAP connection state is CONNECTED"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 572
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set0(I)I

    goto/16 :goto_1

    .line 573
    :cond_2a
    if-nez v9, :cond_2b

    .line 574
    const-string/jumbo v13, "BT_SAP connection state is DISCONNECTED"

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    .line 575
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-set0(I)I

    goto/16 :goto_1

    .line 577
    :cond_2b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BT_SAP connection state is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->-wrap9(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 521
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
