.class public abstract Lcom/mediatek/gba/GbaBaseCredential;
.super Ljava/lang/Object;
.source "GbaBaseCredential.java"


# static fields
.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

.field static final DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

.field protected static final HEX_ARRAY:[C

.field private static final TAG:Ljava/lang/String; = "GbaBaseCredential"

.field protected static sCachedSessionKeyUsed:Z

.field protected static sContext:Landroid/content/Context;

.field protected static sIsTlsEnabled:Z

.field protected static sNafAddress:Ljava/lang/String;

.field protected static sNetwork:Landroid/net/Network;

.field protected static sPasswd:Ljava/lang/String;

.field protected static sService:Lcom/mediatek/gba/IGbaService;

.field protected static sSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 21
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    .line 20
    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    .line 23
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    .line 22
    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 24
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->HEX_ARRAY:[C

    .line 17
    return-void

    .line 21
    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data

    .line 23
    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nafAddress"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sput-object p1, Lcom/mediatek/gba/GbaBaseCredential;->sContext:Landroid/content/Context;

    .line 50
    sput p3, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 56
    :cond_0
    sput-boolean v4, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    .line 57
    sput-boolean v2, Lcom/mediatek/gba/GbaBaseCredential;->sCachedSessionKeyUsed:Z

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 61
    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 62
    sput-boolean v2, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    .line 68
    :cond_1
    :goto_0
    const-string/jumbo v0, "GbaBaseCredential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nafAddress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 63
    :cond_2
    sget-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 64
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 65
    sput-boolean v4, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    goto :goto_0
.end method

.method public static getNafSessionKey()Lcom/mediatek/gba/NafSessionKey;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 110
    const/4 v6, 0x0

    .line 113
    .local v6, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :try_start_0
    const-string/jumbo v11, "GbaService"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v11, "debug"

    const-string/jumbo v12, "The binder is null"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v14

    .line 120
    :cond_0
    invoke-static {v0}, Lcom/mediatek/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;

    move-result-object v11

    sput-object v11, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    :try_start_1
    sget-object v10, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_TLS:[B

    .line 128
    .local v10, "uaId":[B
    sget-boolean v11, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    if-eqz v11, :cond_4

    .line 129
    const-string/jumbo v11, "gba.ciper.suite"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "gbaStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 132
    invoke-static {v4}, Lcom/mediatek/gba/GbaCipherSuite;->getByName(Ljava/lang/String;)Lcom/mediatek/gba/GbaCipherSuite;

    move-result-object v1

    .line 134
    .local v1, "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Lcom/mediatek/gba/GbaCipherSuite;->getCode()[B

    move-result-object v2

    .line 136
    .local v2, "cipherSuiteCode":[B
    const/4 v11, 0x0

    aget-byte v11, v2, v11

    const/4 v12, 0x3

    aput-byte v11, v10, v12

    .line 137
    const/4 v11, 0x1

    aget-byte v11, v2, v11

    const/4 v12, 0x4

    aput-byte v11, v10, v12

    .line 144
    .end local v1    # "cipherSuite":Lcom/mediatek/gba/GbaCipherSuite;
    .end local v2    # "cipherSuiteCode":[B
    .end local v4    # "gbaStr":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v11, Lcom/mediatek/gba/GbaBaseCredential;->sNetwork:Landroid/net/Network;

    if-eqz v11, :cond_2

    .line 145
    sget-object v11, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sNetwork:Landroid/net/Network;

    invoke-interface {v11, v12}, Lcom/mediatek/gba/IGbaService;->setNetwork(Landroid/net/Network;)V

    .line 148
    :cond_2
    const-string/jumbo v11, "digest.realm"

    const-string/jumbo v12, ""

    invoke-static {v11, v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "realm":Ljava/lang/String;
    const-string/jumbo v11, "GbaBaseCredential"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "realm:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 151
    const-string/jumbo v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "segments":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x0

    aget-object v12, v9, v12

    const-string/jumbo v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 153
    const-string/jumbo v11, "GbaBaseCredential"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "NAF FQDN:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget v11, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    const/4 v12, -0x1

    if-ne v12, v11, :cond_6

    .line 159
    sget-object v11, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 160
    sget-boolean v13, Lcom/mediatek/gba/GbaBaseCredential;->sCachedSessionKeyUsed:Z

    .line 159
    invoke-interface {v11, v12, v10, v13}, Lcom/mediatek/gba/IGbaService;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v6

    .line 166
    .local v6, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 167
    invoke-virtual {v6}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/IllegalStateException;

    .line 166
    if-eqz v11, :cond_3

    .line 168
    invoke-virtual {v6}, Lcom/mediatek/gba/NafSessionKey;->getException()Ljava/lang/Exception;

    move-result-object v11

    check-cast v11, Ljava/lang/IllegalStateException;

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "msg":Ljava/lang/String;
    const-string/jumbo v11, "HTTP 403 Forbidden"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 172
    const-string/jumbo v11, "GbaBaseCredential"

    const-string/jumbo v12, "GBA hit 403"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string/jumbo v11, "gba.auth"

    const-string/jumbo v12, "403"

    invoke-static {v11, v12}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v8    # "realm":Ljava/lang/String;
    .end local v9    # "segments":[Ljava/lang/String;
    .end local v10    # "uaId":[B
    :cond_3
    :goto_3
    return-object v6

    .line 121
    .local v6, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "uaId":[B
    :cond_4
    :try_start_2
    sget-object v10, Lcom/mediatek/gba/GbaBaseCredential;->DEFAULT_UA_SECURITY_PROTOCOL_ID_HTTP:[B

    goto/16 :goto_1

    .line 155
    .restart local v8    # "realm":Ljava/lang/String;
    :cond_5
    return-object v14

    .line 162
    .restart local v9    # "segments":[Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/mediatek/gba/GbaBaseCredential;->sService:Lcom/mediatek/gba/IGbaService;

    sget-object v12, Lcom/mediatek/gba/GbaBaseCredential;->sNafAddress:Ljava/lang/String;

    .line 163
    sget-boolean v13, Lcom/mediatek/gba/GbaBaseCredential;->sCachedSessionKeyUsed:Z

    sget v14, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    .line 162
    invoke-interface {v11, v12, v10, v13, v14}, Lcom/mediatek/gba/IGbaService;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .local v6, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    goto :goto_2

    .line 176
    .end local v6    # "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    .end local v8    # "realm":Ljava/lang/String;
    .end local v9    # "segments":[Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 177
    .end local v10    # "uaId":[B
    .local v7, "re":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public setNetwork(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string/jumbo v0, "GbaBaseCredential"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GBA dedicated network netid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sput-object p1, Lcom/mediatek/gba/GbaBaseCredential;->sNetwork:Landroid/net/Network;

    .line 97
    :cond_0
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 88
    sput p1, Lcom/mediatek/gba/GbaBaseCredential;->sSubId:I

    .line 87
    return-void
.end method

.method public setTlsEnabled(Z)V
    .locals 0
    .param p1, "tlsEnabled"    # Z

    .prologue
    .line 78
    sput-boolean p1, Lcom/mediatek/gba/GbaBaseCredential;->sIsTlsEnabled:Z

    .line 77
    return-void
.end method
