.class public abstract Lcom/mediatek/gba/IGbaService$Stub;
.super Landroid/os/Binder;
.source "IGbaService.java"

# interfaces
.implements Lcom/mediatek/gba/IGbaService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gba/IGbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gba/IGbaService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.gba.IGbaService"

.field static final TRANSACTION_getGbaSupported:I = 0x1

.field static final TRANSACTION_getGbaSupportedForSubscriber:I = 0x2

.field static final TRANSACTION_isGbaKeyExpired:I = 0x3

.field static final TRANSACTION_isGbaKeyExpiredForSubscriber:I = 0x4

.field static final TRANSACTION_runGbaAuthentication:I = 0x5

.field static final TRANSACTION_runGbaAuthenticationForSubscriber:I = 0x6

.field static final TRANSACTION_setNetwork:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.mediatek.gba.IGbaService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/gba/IGbaService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.mediatek.gba.IGbaService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/gba/IGbaService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/mediatek/gba/IGbaService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/mediatek/gba/IGbaService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/gba/IGbaService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 45
    :sswitch_0
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x1

    return v10

    .line 50
    :sswitch_1
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupported()I

    move-result v7

    .line 52
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    const/4 v10, 0x1

    return v10

    .line 58
    .end local v7    # "_result":I
    :sswitch_2
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/mediatek/gba/IGbaService$Stub;->getGbaSupportedForSubscriber(I)I

    move-result v7

    .line 62
    .restart local v7    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v10, 0x1

    return v10

    .line 68
    .end local v0    # "_arg0":I
    .end local v7    # "_result":I
    :sswitch_3
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 73
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpired(Ljava/lang/String;[B)Z

    move-result v9

    .line 74
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v9, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v10, 0x1

    return v10

    .line 75
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 80
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v9    # "_result":Z
    :sswitch_4
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 86
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 87
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/mediatek/gba/IGbaService$Stub;->isGbaKeyExpiredForSubscriber(Ljava/lang/String;[BI)Z

    move-result v9

    .line 88
    .restart local v9    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v9, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v10, 0x1

    return v10

    .line 89
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 94
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v9    # "_result":Z
    :sswitch_5
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 100
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 101
    .local v5, "_arg2":Z
    :goto_2
    invoke-virtual {p0, v2, v3, v5}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZ)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v8

    .line 102
    .local v8, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v8, :cond_3

    .line 104
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v10, 0x1

    invoke-virtual {v8, p3, v10}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    :goto_3
    const/4 v10, 0x1

    return v10

    .line 100
    .end local v5    # "_arg2":Z
    .end local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Z
    goto :goto_2

    .line 108
    .restart local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 114
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v5    # "_arg2":Z
    .end local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :sswitch_6
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 120
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    .line 122
    .restart local v5    # "_arg2":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 123
    .local v6, "_arg3":I
    invoke-virtual {p0, v2, v3, v5, v6}, Lcom/mediatek/gba/IGbaService$Stub;->runGbaAuthenticationForSubscriber(Ljava/lang/String;[BZI)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v8

    .line 124
    .restart local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v8, :cond_5

    .line 126
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v10, 0x1

    invoke-virtual {v8, p3, v10}, Lcom/mediatek/gba/NafSessionKey;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_5
    const/4 v10, 0x1

    return v10

    .line 120
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    .end local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "_arg2":Z
    goto :goto_4

    .line 130
    .restart local v6    # "_arg3":I
    .restart local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 136
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v5    # "_arg2":Z
    .end local v6    # "_arg3":I
    .end local v8    # "_result":Lcom/mediatek/gba/NafSessionKey;
    :sswitch_7
    const-string/jumbo v10, "com.mediatek.gba.IGbaService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    .line 139
    sget-object v10, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 144
    :goto_6
    invoke-virtual {p0, v1}, Lcom/mediatek/gba/IGbaService$Stub;->setNetwork(Landroid/net/Network;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v10, 0x1

    return v10

    .line 142
    :cond_6
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/Network;
    goto :goto_6

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
