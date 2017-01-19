.class Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;
.super Ljava/net/Authenticator;
.source "GbaHttpUrlCredential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/GbaHttpUrlCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaAuthenticator"
.end annotation


# instance fields
.field private mPasswordAuthentication:Ljava/net/PasswordAuthentication;

.field final synthetic this$0:Lcom/mediatek/gba/GbaHttpUrlCredential;


# direct methods
.method private constructor <init>(Lcom/mediatek/gba/GbaHttpUrlCredential;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/gba/GbaHttpUrlCredential;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->this$0:Lcom/mediatek/gba/GbaHttpUrlCredential;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gba/GbaHttpUrlCredential;Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/gba/GbaHttpUrlCredential;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;-><init>(Lcom/mediatek/gba/GbaHttpUrlCredential;)V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    const-string/jumbo v2, "GbaCredentials"

    const-string/jumbo v3, "getPasswordAuthentication"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v2, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->mPasswordAuthentication:Ljava/net/PasswordAuthentication;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/mediatek/gba/GbaHttpUrlCredential;->sCachedSessionKeyUsed:Z

    if-eqz v2, :cond_4

    .line 66
    :cond_0
    const-string/jumbo v2, "GbaCredentials"

    const-string/jumbo v3, "Run GBA procedure"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/mediatek/gba/GbaBaseCredential;->getNafSessionKey()Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 68
    .local v0, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    if-eqz v0, :cond_1

    .line 69
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v2

    if-nez v2, :cond_2

    .line 70
    :cond_1
    return-object v4

    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/gba/NafSessionKey;->getKey()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "password":Ljava/lang/String;
    new-instance v2, Ljava/net/PasswordAuthentication;

    .line 74
    invoke-virtual {v0}, Lcom/mediatek/gba/NafSessionKey;->getBtid()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 73
    invoke-direct {v2, v3, v4}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    iput-object v2, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->mPasswordAuthentication:Ljava/net/PasswordAuthentication;

    .line 82
    .end local v0    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v1    # "password":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gba/GbaHttpUrlCredential$GbaAuthenticator;->mPasswordAuthentication:Ljava/net/PasswordAuthentication;

    return-object v2

    .line 77
    :cond_4
    sget-boolean v2, Lcom/mediatek/gba/GbaHttpUrlCredential;->sCachedSessionKeyUsed:Z

    if-nez v2, :cond_3

    .line 78
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mediatek/gba/GbaHttpUrlCredential;->sCachedSessionKeyUsed:Z

    goto :goto_0
.end method
