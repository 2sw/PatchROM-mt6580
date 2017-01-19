.class public Lcom/mediatek/internal/telephony/DefaultSmsSimSettings;
.super Ljava/lang/Object;
.source "DefaultSmsSimSettings.java"


# static fields
.field public static final ASK_USER_SUB_ID:I = -0x2

.field private static final TAG:Ljava/lang/String; = "DefaultSmsSimSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isoldDefaultSMSSubIdActive(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 66
    .local v0, "oldSmsDefaultSIM":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 67
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 68
    const/4 v3, 0x1

    return v3

    .line 79
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public static setSmsTalkDefaultSim(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    return-void
.end method
