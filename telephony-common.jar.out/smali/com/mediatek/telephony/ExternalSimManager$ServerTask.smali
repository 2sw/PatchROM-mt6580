.class public Lcom/mediatek/telephony/ExternalSimManager$ServerTask;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation


# static fields
.field public static final HOST_NAME:Ljava/lang/String; = "vsim-adaptor"


# instance fields
.field private ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 220
    return-void
.end method


# virtual methods
.method public listenConnection(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 9
    .param p1, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 225
    const-string/jumbo v6, "ExternalSimManager"

    const-string/jumbo v7, "listenConnection() - start"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 232
    .local v5, "threadExecutor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v3, Landroid/net/LocalServerSocket;

    const-string/jumbo v6, "vsim-adaptor"

    invoke-direct {v3, v6}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    .local v3, "serverSocket":Landroid/net/LocalServerSocket;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v4

    .line 237
    .local v4, "socket":Landroid/net/LocalSocket;
    const-string/jumbo v6, "ExternalSimManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "There is a client is accpted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v6, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;

    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$ServerTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {v6, v7, v4, p1}, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;-><init>(Lcom/mediatek/telephony/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 241
    .end local v4    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v2, v3

    .line 242
    .end local v3    # "serverSocket":Landroid/net/LocalServerSocket;
    :goto_1
    :try_start_2
    const-string/jumbo v6, "ExternalSimManager"

    const-string/jumbo v7, "listenConnection catch IOException"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    const-string/jumbo v6, "ExternalSimManager"

    const-string/jumbo v7, "listenConnection finally!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v5, :cond_0

    .line 250
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 251
    :cond_0
    if-eqz v2, :cond_1

    .line 253
    :try_start_3
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const-string/jumbo v6, "ExternalSimManager"

    const-string/jumbo v7, "listenConnection() - end"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 244
    .restart local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    :catch_1
    move-exception v1

    .line 245
    .end local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string/jumbo v6, "ExternalSimManager"

    const-string/jumbo v7, "listenConnection catch Exception"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 248
    const-string/jumbo v6, "ExternalSimManager"

    const-string/jumbo v7, "listenConnection finally!!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v5, :cond_2

    .line 250
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 251
    :cond_2
    if-eqz v2, :cond_1

    .line 253
    :try_start_5
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 254
    :catch_2
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 248
    :goto_4
    const-string/jumbo v7, "ExternalSimManager"

    const-string/jumbo v8, "listenConnection finally!!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v5, :cond_3

    .line 250
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 251
    :cond_3
    if-eqz v2, :cond_4

    .line 253
    :try_start_6
    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 247
    :cond_4
    :goto_5
    throw v6

    .line 254
    :catch_4
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 247
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "serverSocket":Landroid/net/LocalServerSocket;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "serverSocket":Landroid/net/LocalServerSocket;
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    goto :goto_4

    .line 241
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 244
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "serverSocket":Landroid/net/LocalServerSocket;
    .restart local v3    # "serverSocket":Landroid/net/LocalServerSocket;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "serverSocket":Landroid/net/LocalServerSocket;
    .local v2, "serverSocket":Landroid/net/LocalServerSocket;
    goto :goto_3
.end method
