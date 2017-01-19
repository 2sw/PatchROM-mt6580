.class public Lcom/mediatek/gba/NafSessionKey;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gba/NafSessionKey$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/gba/NafSessionKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBtid:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mKey:[B

.field private mKeylifetime:Ljava/lang/String;

.field private mNafId:[B

.field private mNafKeyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/mediatek/gba/NafSessionKey$1;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey$1;-><init>()V

    .line 106
    sput-object v0, Lcom/mediatek/gba/NafSessionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "keylifetime"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 26
    iput-object p3, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    return-object v0
.end method

.method public getKeylifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    return-object v0
.end method

.method public getNafId()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafId:[B

    return-object v0
.end method

.method public getNafKeyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    return-object v0
.end method

.method public setBtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "btid"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    .line 69
    return-void
.end method

.method public setKey([B)V
    .locals 0
    .param p1, "key"    # [B

    .prologue
    .line 42
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 41
    return-void
.end method

.method public setKeylifetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "keylifetime"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setNafId([B)V
    .locals 0
    .param p1, "nafId"    # [B

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mNafId:[B

    .line 61
    return-void
.end method

.method public setNafKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nafKeyName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NafSessionKey: btid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 151
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 95
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mNafKeyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mException:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 92
    :cond_0
    return-void
.end method
