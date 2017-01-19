.class Lcom/mediatek/internal/telephony/RadioManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/RadioManager;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/RadioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/internal/telephony/RadioManager;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BroadcastReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/RadioManager;->-wrap0(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveSimStateChangedIntent(Landroid/content/Intent;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.mediatek.internal.telephony.RadioManager.intent.action.FORCE_SET_RADIO_POWER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-static {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->-wrap1(Lcom/mediatek/internal/telephony/RadioManager;Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.ACTION_WIFI_ONLY_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mediatek/internal/telephony/RadioManager$1;->this$0:Lcom/mediatek/internal/telephony/RadioManager;

    invoke-virtual {v0, p2}, Lcom/mediatek/internal/telephony/RadioManager;->onReceiveWifiOnlyModeStateChangedIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
