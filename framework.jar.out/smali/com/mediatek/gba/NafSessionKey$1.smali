.class final Lcom/mediatek/gba/NafSessionKey$1;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/NafSessionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/gba/NafSessionKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    new-instance v6, Lcom/mediatek/gba/NafSessionKey;

    invoke-direct {v6}, Lcom/mediatek/gba/NafSessionKey;-><init>()V

    .line 110
    .local v6, "nafSessionKey":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "btid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v6, v0}, Lcom/mediatek/gba/NafSessionKey;->setBtid(Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 118
    .local v3, "key":[B
    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v6, v3}, Lcom/mediatek/gba/NafSessionKey;->setKey([B)V

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "keylifetime":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v6, v4}, Lcom/mediatek/gba/NafSessionKey;->setKeylifetime(Ljava/lang/String;)V

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "nafKeyName":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 131
    invoke-virtual {v6, v5}, Lcom/mediatek/gba/NafSessionKey;->setNafKeyName(Ljava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "exceptionCode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "exceptionString":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 138
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/mediatek/gba/NafSessionKey;->setException(Ljava/lang/Exception;)V

    .line 141
    :cond_4
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/gba/NafSessionKey;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 145
    new-array v0, p1, [Lcom/mediatek/gba/NafSessionKey;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/mediatek/gba/NafSessionKey$1;->newArray(I)[Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    return-object v0
.end method
