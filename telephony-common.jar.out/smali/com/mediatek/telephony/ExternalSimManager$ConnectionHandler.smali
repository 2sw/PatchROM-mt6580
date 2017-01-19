.class public Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;
.super Ljava/lang/Object;
.source "ExternalSimManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/ExternalSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionHandler"
.end annotation


# static fields
.field public static final RILD_SERVER_NAME:Ljava/lang/String; = "rild-vsim"


# instance fields
.field private mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

.field private mSocket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/mediatek/telephony/ExternalSimManager;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/ExternalSimManager;Landroid/net/LocalSocket;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/telephony/ExternalSimManager;
    .param p2, "clientSocket"    # Landroid/net/LocalSocket;
    .param p3, "eventHandler"    # Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    .line 336
    iput-object p3, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 334
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 344
    const-string/jumbo v1, "ExternalSimManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :try_start_0
    new-instance v0, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    .line 351
    const-string/jumbo v2, "vsim-adaptor"

    .line 352
    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 353
    iget-object v4, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 354
    iget-object v5, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 350
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;-><init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    .line 355
    .local v0, "ioThread":Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    invoke-virtual {v0}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->start()V

    .line 357
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/ExternalSimManager;->-get2(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    new-instance v2, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    iget-object v3, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    .line 359
    const-string/jumbo v4, "rild-vsim"

    .line 360
    const-string/jumbo v5, "rild-vsim"

    .line 361
    iget-object v7, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    .line 358
    invoke-direct {v2, v3, v4, v5, v7}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;-><init>(Lcom/mediatek/telephony/ExternalSimManager;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;)V

    invoke-static {v1, v2}, Lcom/mediatek/telephony/ExternalSimManager;->-set1(Lcom/mediatek/telephony/ExternalSimManager;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    .line 362
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v1}, Lcom/mediatek/telephony/ExternalSimManager;->-get2(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;->start()V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->mEventHandler:Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;

    iget-object v2, p0, Lcom/mediatek/telephony/ExternalSimManager$ConnectionHandler;->this$0:Lcom/mediatek/telephony/ExternalSimManager;

    invoke-static {v2}, Lcom/mediatek/telephony/ExternalSimManager;->-get2(Lcom/mediatek/telephony/ExternalSimManager;)Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;->-wrap0(Lcom/mediatek/telephony/ExternalSimManager$VsimEvenHandler;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "ioThread":Lcom/mediatek/telephony/ExternalSimManager$VsimIoThread;
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v6

    .line 367
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
