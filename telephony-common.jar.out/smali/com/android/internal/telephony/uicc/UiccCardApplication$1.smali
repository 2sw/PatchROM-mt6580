.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 390
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-get0(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Received message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 392
    const-string/jumbo v9, "] while being destroyed. Ignoring."

    .line 391
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 393
    return-void

    .line 396
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 487
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap2(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 403
    :sswitch_0
    const/4 v1, -0x1

    .line 404
    .local v1, "attemptsRemaining":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 405
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_1

    .line 406
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v1

    .line 408
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 409
    .local v4, "response":Landroid/os/Message;
    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 410
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 411
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 414
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "attemptsRemaining":I
    .end local v4    # "response":Landroid/os/Message;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 415
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap6(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 418
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 419
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap4(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 422
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 423
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap5(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 426
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 427
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap3(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 430
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string/jumbo v8, "handleMessage (EVENT_RADIO_UNAVAILABLE)"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 431
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-set0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto :goto_0

    .line 438
    :sswitch_6
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string/jumbo v8, "EVENT_PUK1_CHANGE_PIN1_DONE"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 439
    const/4 v2, -0x1

    .line 440
    .local v2, "attemptsRemainingPuk":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 441
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .line 442
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v2

    .line 444
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    .line 445
    .local v5, "responsePuk":Landroid/os/Message;
    invoke-static {v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 446
    iput v2, v5, Landroid/os/Message;->arg1:I

    .line 447
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 448
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap7(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    goto/16 :goto_0

    .line 451
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "attemptsRemainingPuk":I
    .end local v5    # "responsePuk":Landroid/os/Message;
    :sswitch_7
    const/4 v3, -0x1

    .line 452
    .local v3, "attemptsRemainingPuk2":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 453
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_3

    .line 454
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v3

    .line 456
    :cond_3
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Message;

    .line 457
    .local v6, "responsePuk2":Landroid/os/Message;
    invoke-static {v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 458
    iput v3, v6, Landroid/os/Message;->arg1:I

    .line 459
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 460
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_0

    .line 464
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "attemptsRemainingPuk2":I
    .end local v6    # "responsePuk2":Landroid/os/Message;
    :sswitch_8
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string/jumbo v8, "handleMessage (EVENT_QUERY_NETWORK_LOCK)"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 465
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 467
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_4

    .line 468
    const-string/jumbo v7, "UiccCardApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error query network lock with exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 469
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 468
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_4
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 472
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 475
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string/jumbo v8, "handleMessage (EVENT_CHANGE_NETWORK_LOCK)"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->-wrap1(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 476
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 477
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_5

    .line 478
    const-string/jumbo v7, "UiccCardApplication"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error change network lock with exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 479
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 478
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_5
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-static {v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    .line 482
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 481
    iput-object v8, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 483
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_0
        0x9 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
    .end sparse-switch
.end method
