.class public Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RilClientTask"
.end annotation


# static fields
.field public static final SERVER_NAME:Ljava/lang/String; = "rild-vsim"


# instance fields
.field private ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

.field mSocket:Landroid/net/LocalSocket;

.field private retryCount:I

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/telephony/ExternalSimManager;

    .prologue
    const/4 v0, 0x0

    .line 268
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    .line 271
    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    .line 268
    return-void
.end method


# virtual methods
.method public connectToServer()V
    .locals 6

    .prologue
    .line 276
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "connectToServer() - start"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 279
    :try_start_0
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "connectToServer() - before"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    iput-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    .line 282
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "rild-vsim"

    .line 283
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 282
    invoke-direct {v0, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 285
    .local v0, "addr":Landroid/net/LocalSocketAddress;
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 287
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "connectToServer() - after"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "addr":Landroid/net/LocalSocketAddress;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 303
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "connectToServer connected!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "connectToServer() - end"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ExternalSimManager"

    const-string/jumbo v4, "connectToServer catch IOException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    iget v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    .line 295
    const-wide/16 v4, 0xfa0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :goto_1
    const-string/jumbo v3, "ExternalSimManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectToServer retry later, retry count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->retryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :catch_1
    move-exception v2

    .local v2, "er":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method public getIoThread(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    .locals 7
    .param p1, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    if-nez v0, :cond_0

    .line 313
    :try_start_0
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    .line 314
    const-string/jumbo v2, "rild-vsim"

    .line 315
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 316
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    move-object v5, p1

    .line 313
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;-><init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    iput-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 318
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    invoke-virtual {v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/telephony/ExternalSimManager$RilClientTask;->ioThread:Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    return-object v0

    .line 319
    :catch_0
    move-exception v6

    .line 320
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "ExternalSimManager"

    const-string/jumbo v1, "getIoThread catch IOException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
