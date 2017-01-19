.class public Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;
.super Lcom/android/internal/telephony/RIL$RILReceiver;
.source "MediaTekRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MediaTekRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MTKRILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field final synthetic this$0:Lcom/android/internal/telephony/MediaTekRIL;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/MediaTekRIL;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/MediaTekRIL;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL$RILReceiver;-><init>(Lcom/android/internal/telephony/RIL;)V

    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->mStoped:Z

    .line 1903
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->buffer:[B

    .line 1902
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1912
    const/4 v10, 0x0

    .line 1913
    .local v10, "retryCount":I
    const-string/jumbo v11, "rild"

    .line 1917
    .local v11, "rilSocket":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->mStoped:Z

    if-eqz v15, :cond_0

    .line 1918
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    const-string/jumbo v16, "[RIL SWITCH] stoped now!"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 1919
    return-void

    .line 1922
    :cond_0
    const/4 v12, 0x0

    .line 1926
    .local v12, "s":Landroid/net/LocalSocket;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    iget-object v15, v15, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    iget-object v15, v15, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1927
    :cond_1
    sget-object v15, Lcom/android/internal/telephony/MediaTekRIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v16

    aget-object v11, v15, v16

    .line 1948
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    iget v15, v15, Lcom/android/internal/telephony/MediaTekRIL;->mPreferredNetworkType:I

    invoke-static {v15}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v9

    .line 1949
    .local v9, "phoneType":I
    const/4 v15, 0x2

    if-ne v9, v15, :cond_2

    .line 1950
    const-string/jumbo v11, "rild-via"

    .line 1954
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "rilSocket["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "] = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1957
    :try_start_1
    new-instance v13, Landroid/net/LocalSocket;

    invoke-direct {v13}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 1958
    .end local v12    # "s":Landroid/net/LocalSocket;
    .local v13, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v6, Landroid/net/LocalSocketAddress;

    .line 1959
    sget-object v15, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 1958
    invoke-direct {v6, v11, v15}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1960
    .local v6, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v13, v6}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1993
    const/4 v10, 0x0

    .line 1995
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    iput-object v13, v15, Lcom/android/internal/telephony/MediaTekRIL;->mSocket:Landroid/net/LocalSocket;

    .line 1996
    const-string/jumbo v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") Connected to \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1997
    const-string/jumbo v17, "\' socket"

    .line 1996
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1999
    const/4 v7, 0x0

    .line 2001
    .local v7, "length":I
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    iget-object v15, v15, Lcom/android/internal/telephony/MediaTekRIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 2004
    .local v5, "is":Ljava/io/InputStream;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->buffer:[B

    invoke-static {v5, v15}, Lcom/android/internal/telephony/MediaTekRIL;->-wrap0(Ljava/io/InputStream;[B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    move-result v7

    .line 2005
    if-gez v7, :cond_a

    .line 2026
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    const-string/jumbo v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ") Disconnected from \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2027
    const-string/jumbo v17, "\' socket"

    .line 2026
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    sget-object v16, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/MediaTekRIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 2032
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    iget-object v15, v15, Lcom/android/internal/telephony/MediaTekRIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v15}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 2036
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/android/internal/telephony/MediaTekRIL;->mSocket:Landroid/net/LocalSocket;

    .line 2037
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 2040
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/MediaTekRIL;->clearRequestList(IZ)V

    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .local v12, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 1929
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    .end local v9    # "phoneType":I
    .local v12, "s":Landroid/net/LocalSocket;
    :cond_3
    const-string/jumbo v15, "ro.mtk_dt_support"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 1931
    sget-object v15, Lcom/android/internal/telephony/MediaTekRIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v11, v15, v16

    goto/16 :goto_1

    .line 1934
    :cond_4
    const-string/jumbo v15, "ro.evdo_dt_support"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1936
    sget-object v15, Lcom/android/internal/telephony/MediaTekRIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v11, v15, v16

    goto/16 :goto_1

    .line 1937
    :cond_5
    const-string/jumbo v15, "ro.telephony.cl.config"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1939
    sget-object v15, Lcom/android/internal/telephony/MediaTekRIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/MediaTekRIL;->mInstanceId:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aget-object v11, v15, v16

    goto/16 :goto_1

    .line 1942
    :cond_6
    const-string/jumbo v11, "rild-md2"
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 1961
    .restart local v9    # "phoneType":I
    :catch_0
    move-exception v3

    .line 1963
    .end local v12    # "s":Landroid/net/LocalSocket;
    .local v3, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v12, :cond_7

    .line 1964
    :try_start_8
    invoke-virtual {v12}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 1973
    :cond_7
    :goto_6
    const/16 v15, 0x8

    if-ne v10, v15, :cond_9

    .line 1974
    :try_start_9
    const-string/jumbo v15, "RILJ"

    .line 1975
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1976
    const-string/jumbo v17, "\' socket after "

    .line 1975
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1977
    const-string/jumbo v17, " times, continuing to retry silently"

    .line 1975
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1974
    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 1985
    :cond_8
    :goto_7
    const-wide/16 v16, 0xfa0

    :try_start_a
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 1989
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1966
    :catch_1
    move-exception v4

    .local v4, "ex2":Ljava/io/IOException;
    goto :goto_6

    .line 1978
    .end local v4    # "ex2":Ljava/io/IOException;
    :cond_9
    if-ltz v10, :cond_8

    const/16 v15, 0x8

    if-ge v10, v15, :cond_8

    .line 1979
    :try_start_b
    const-string/jumbo v15, "RILJ"

    .line 1980
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Couldn\'t find \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1981
    const-string/jumbo v17, "\' socket; retrying after timeout"

    .line 1980
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1979
    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    .line 2041
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v9    # "phoneType":I
    :catch_2
    move-exception v14

    .line 2042
    .local v14, "tr":Ljava/lang/Throwable;
    const-string/jumbo v15, "RILJ"

    const-string/jumbo v16, "Uncaught exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2046
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    const/16 v16, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/telephony/MediaTekRIL;->notifyRegistrantsRilConnectionChanged(I)V

    .line 1911
    return-void

    .line 1986
    .end local v14    # "tr":Ljava/lang/Throwable;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v9    # "phoneType":I
    :catch_3
    move-exception v2

    .local v2, "er":Ljava/lang/InterruptedException;
    goto :goto_8

    .line 2009
    .end local v2    # "er":Ljava/lang/InterruptedException;
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "l":Landroid/net/LocalSocketAddress;
    .restart local v7    # "length":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :cond_a
    :try_start_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 2010
    .local v8, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->buffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2011
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2015
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/MediaTekRIL$MTKRILReceiver;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    invoke-virtual {v15, v8}, Lcom/android/internal/telephony/MediaTekRIL;->processResponse(Landroid/os/Parcel;)V

    .line 2016
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_2

    .line 2018
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v3

    .line 2019
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "\'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "\' socket closed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 2021
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v14

    .line 2022
    .restart local v14    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v15, "RILJ"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Uncaught exception read length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2023
    const-string/jumbo v17, "Exception:"

    .line 2022
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 2023
    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2022
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    .line 2033
    .end local v14    # "tr":Ljava/lang/Throwable;
    :catch_6
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    goto/16 :goto_4

    .line 1961
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v6    # "l":Landroid/net/LocalSocketAddress;
    .end local v7    # "length":I
    :catch_7
    move-exception v3

    .restart local v3    # "ex":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "s":Landroid/net/LocalSocket;
    .local v12, "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
