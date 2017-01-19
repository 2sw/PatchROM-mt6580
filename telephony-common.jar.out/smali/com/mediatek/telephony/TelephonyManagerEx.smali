.class public Lcom/mediatek/telephony/TelephonyManagerEx;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# static fields
.field public static final ERROR_CODE_GENERIC_ERROR:B = 0x1t

.field public static final ERROR_CODE_NO_ERROR:B = 0x0t

.field public static final GET_SC_ADDRESS_KEY_ADDRESS:Ljava/lang/String; = "scAddress"

.field public static final GET_SC_ADDRESS_KEY_RESULT:Ljava/lang/String; = "errorCode"

.field public static final SVLTE_RAT_MODE_3G:I = 0x1

.field public static final SVLTE_RAT_MODE_4G:I = 0x0

.field public static final SVLTE_RAT_MODE_4G_DATA_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TelephonyManagerEx"

.field private static defaultSimId:I

.field private static sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;


# instance fields
.field private PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/telephony/TelephonyManagerEx;->defaultSimId:I

    .line 138
    new-instance v0, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>()V

    sput-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 96
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "ril.iccid.sim1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "ril.iccid.sim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "ril.iccid.sim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 110
    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "telephony.registry"

    .line 134
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "ril.iccid.sim1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "ril.iccid.sim2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "ril.iccid.sim3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 114
    const-string/jumbo v1, "ril.iccid.sim4"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 110
    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    .line 124
    const-string/jumbo v0, "TelephonyManagerEx"

    const-string/jumbo v1, "getSubscriberInfo"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-object p1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    .line 127
    const-string/jumbo v0, "telephony.registry"

    .line 126
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 122
    return-void
.end method

.method public static getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/mediatek/telephony/TelephonyManagerEx;->sInstance:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 841
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;
    .locals 1

    .prologue
    .line 845
    const-string/jumbo v0, "phoneEx"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 858
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 860
    .local v1, "phoneId":I
    const-string/jumbo v2, "ro.telephony.default_network"

    .line 859
    invoke-static {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 862
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v2

    return v2

    .line 864
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private getPhoneTypeFromProperty()I
    .locals 3

    .prologue
    .line 851
    const-string/jumbo v1, "gsm.current.phone-type"

    .line 852
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneTypeFromNetworkType()I

    move-result v2

    .line 851
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 853
    .local v0, "type":I
    return v0
.end method

.method private getSubIdBySlot(I)I
    .locals 5
    .param p1, "slot"    # I

    .prologue
    const/4 v4, 0x0

    .line 439
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 440
    .local v0, "subId":[I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubIdBySlot, simId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    const-string/jumbo v3, "subId "

    .line 440
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 441
    if-eqz v0, :cond_0

    aget v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 440
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz v0, :cond_1

    aget v1, v0, v4

    :goto_1
    return v1

    .line 441
    :cond_0
    const-string/jumbo v1, "invalid!"

    goto :goto_0

    .line 442
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    goto :goto_1
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 968
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 753
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCallState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCdmaRatModeKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1336
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 204
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated! getCellLocation with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 211
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDataActivity(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 774
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataActivity simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public getDataState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 794
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 179
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceId simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceId error, return null. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 153
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceSoftwareVersion simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceSoftwareVersion error, return null. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    return-object v1
.end method

.method public getIccCardType(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 453
    const/4 v3, 0x0

    .line 455
    .local v3, "type":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 456
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 457
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getIccCardType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 465
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v3    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v5, "TelephonyManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getIccCardType sub "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " ,icc type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    move-object v4, v3

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v3

    .line 461
    .restart local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 463
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 459
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 460
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "null"

    goto :goto_1
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 999
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1002
    :catch_0
    move-exception v1

    .line 1004
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1000
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1001
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getIsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimGbabp(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 981
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 984
    :catch_0
    move-exception v1

    .line 986
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 982
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 983
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1018
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1021
    :catch_0
    move-exception v1

    .line 1023
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1019
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1020
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimIst(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1036
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1039
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1037
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1038
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimPcscf(I)[Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1055
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1058
    :catch_0
    move-exception v1

    .line 1060
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 1056
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1057
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 697
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLine1Number with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNeighboringCellInfo(I)Ljava/util/List;
    .locals 4
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated! getNeighboringCellInfo with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 240
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 356
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 357
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! getNetworkCountryIso with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 359
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 361
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 307
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! getNetworkOperator with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 309
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 311
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 281
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 282
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! getNetworkOperatorName with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 284
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 286
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getNetworkType(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 411
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated! getNetworkType with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    return v1
.end method

.method public getPhoneType(I)I
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 256
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 257
    .local v0, "subIds":[I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deprecated! getPhoneType with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    return v1
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 878
    invoke-virtual {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getScAddressWithErroCode(I)Landroid/os/Bundle;

    move-result-object v0

    .line 879
    .local v0, "result":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 880
    const-string/jumbo v1, "scAddress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 882
    :cond_0
    return-object v1
.end method

.method public getScAddressWithErroCode(I)Landroid/os/Bundle;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 934
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getScAddressUsingSubId(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 938
    :catch_0
    move-exception v1

    .line 939
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 940
    return-object v3

    .line 935
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 936
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 937
    return-object v3
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 622
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimCountryIso with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 586
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimOperator with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 605
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimOperatorName with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 640
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 641
    :cond_0
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSimSerialNumber with invalid simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-object v4

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string/jumbo v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    :cond_2
    const/4 v0, 0x0

    .line 651
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 567
    const-string/jumbo v0, "TelephonyManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimState simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 676
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubscriberId with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSubscriberIdForLteDcPhone(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1234
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSubscriberIdForLteDcPhone(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1238
    :catch_0
    move-exception v1

    .line 1239
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1240
    return-object v3

    .line 1235
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1236
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1237
    return-object v3
.end method

.method public getSvlteCardType(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 478
    const/4 v3, 0x0

    .line 480
    .local v3, "type":I
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 481
    .local v2, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getSvlteCardType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 490
    .end local v2    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSvlteCardType(): slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,icc type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return v3

    .line 486
    :catch_0
    move-exception v1

    .line 488
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 485
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUsimGbabp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1166
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getUsimGbabp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsimGbabp(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimService(I)Z
    .locals 1
    .param p1, "service"    # I

    .prologue
    .line 1136
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getUsimService(II)Z

    move-result v0

    return v0
.end method

.method public getUsimService(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "service"    # I

    .prologue
    .line 1157
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 735
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoiceMailAlphaTag with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v0

    .line 715
    .local v0, "subId":I
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVoiceMailNumber with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ,subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 433
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasIccCard simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move v0, p1

    .line 435
    .local v0, "slot":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    return v1
.end method

.method public isAirplanemodeAvailableNow()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1313
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAirplanemodeAvailableNow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1316
    :catch_0
    move-exception v1

    .line 1317
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1314
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1315
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isAllowAirplaneModeChange()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1297
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAllowAirplaneModeChange()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1298
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1299
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isAppTypeSupported(II)Z
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "appType"    # I

    .prologue
    .line 501
    const/4 v2, 0x0

    .line 503
    .local v2, "isSupported":Z
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 504
    .local v3, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v3, :cond_0

    .line 505
    invoke-interface {v3, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isAppTypeSupported(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 513
    .end local v2    # "isSupported":Z
    .end local v3    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAppTypeSupported slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", appType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 514
    const-string/jumbo v6, ", isSupported: "

    .line 513
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return v2

    .line 509
    .restart local v2    # "isSupported":Z
    :catch_0
    move-exception v1

    .line 511
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 508
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isInDsdaMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1273
    const-string/jumbo v2, "ro.mtk_switch_antenna"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    return v4

    .line 1277
    :cond_0
    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string/jumbo v2, "persist.radio.svlte.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    .local v1, "svlteMode":Ljava/lang/String;
    const-string/jumbo v2, "dsda"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1282
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1283
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "svlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1282
    if-eqz v2, :cond_2

    .line 1284
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1287
    :cond_2
    return v4
.end method

.method public isInHomeNetwork(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1348
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isInHomeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1351
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1349
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1350
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isNetworkRoaming(I)Z
    .locals 5
    .param p1, "simId"    # I

    .prologue
    .line 330
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubIdBySlot(I)I

    move-result v1

    .line 331
    .local v1, "subId":I
    const-string/jumbo v2, "TelephonyManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deprecated! isNetworkRoaming with simId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 333
    .end local v1    # "subId":I
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 335
    const/4 v2, 0x0

    return v2
.end method

.method public isTestIccCard(I)Z
    .locals 7
    .param p1, "simId"    # I

    .prologue
    .line 525
    const/4 v2, 0x0

    .line 526
    .local v2, "result":Z
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTestIccCard simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v3

    .line 529
    .local v3, "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-eqz v3, :cond_0

    .line 530
    invoke-interface {v3, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isTestIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 538
    .end local v2    # "result":Z
    .end local v3    # "telephony":Lcom/mediatek/internal/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isTestIccCard sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ,result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    return v2

    .line 534
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 536
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 532
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 533
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;II)V
    .locals 4
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I
    .param p3, "simId"    # I

    .prologue
    .line 834
    const-string/jumbo v1, "TelephonyManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deprecated api, listen simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",events="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/telephony/TelephonyManagerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 833
    return-void

    .line 835
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "<unknown>"

    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    goto :goto_0
.end method

.method public setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1116
    return-void
.end method

.method public setIsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1103
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setIsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 1102
    return-void
.end method

.method public setScAddress(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 956
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getITelephonyEx()Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setScAddressUsingSubId(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 960
    :catch_0
    move-exception v1

    .line 961
    .local v1, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 962
    return v3

    .line 957
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 958
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 959
    return v3
.end method

.method public setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "gbabp"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1212
    return-void
.end method

.method public setUsimGbabp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "gbabp"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1199
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setUsimGbabp(ILjava/lang/String;Landroid/os/Message;)V

    .line 1198
    return-void
.end method
