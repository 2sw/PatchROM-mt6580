.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final DBG:Z = false

.field static final EVDO_DT_SUPPORT:Ljava/lang/String; = "ril.evdo.dtsupport"

.field static final LOG_TAG:Ljava/lang/String; = "PhoneFactory"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

.field private static mProxyController:Lcom/android/internal/telephony/ProxyController;

.field private static mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static final sLocalLogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LocalLog;",
            ">;"
        }
    .end annotation
.end field

.field static final sLockProxyPhones:Ljava/lang/Object;

.field private static sMadeDefaults:Z

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

.field private static sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private static sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

.field private static sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    .line 81
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 82
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 84
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    .line 103
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalLog(Ljava/lang/String;I)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 639
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 640
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 643
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    new-instance v2, Landroid/util/LocalLog;

    invoke-direct {v2, p1}, Landroid/util/LocalLog;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 638
    return-void
.end method

.method private static calculateNetworkType(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 814
    const/4 v1, -0x1

    .line 816
    .local v1, "networkMode":I
    const-string/jumbo v2, "persist.radio.simswitch"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 818
    .local v0, "capabilityPhoneId":I
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    const-string/jumbo v2, "PhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "calculateNetworkType error, phone id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return v1

    .line 827
    :cond_0
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 828
    if-ne p1, v0, :cond_1

    .line 829
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 833
    :goto_0
    return v1

    .line 831
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 836
    :cond_2
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result p1

    .line 842
    invoke-static {p1}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidateSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 843
    if-ne p1, v0, :cond_4

    .line 844
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 849
    :cond_3
    :goto_1
    return v1

    .line 846
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 744
    const-string/jumbo v2, "preferred_network_mode"

    .line 745
    sget v3, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 743
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 746
    .local v0, "networkType":I
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculatePreferredNetworkType: networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return v0
.end method

.method public static calculatePreferredNetworkType(Landroid/content/Context;I)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneSubId"    # I

    .prologue
    .line 486
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 487
    .local v1, "phoneId":I
    sget v2, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 489
    .local v2, "phoneIdNetworkType":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 490
    const-string/jumbo v6, "preferred_network_mode"

    .line 489
    invoke-static {v5, v6, v1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 494
    :goto_0
    move v0, v2

    .line 495
    .local v0, "networkType":I
    const-string/jumbo v5, "PhoneFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculatePreferredNetworkType: phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 496
    const-string/jumbo v7, " phoneIdNetworkType = "

    .line 495
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 500
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "preferred_network_mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 504
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/SubscriptionController;->getUserNwMode(I)I

    move-result v4

    .line 505
    .local v4, "userNwType":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eq v4, v0, :cond_0

    .line 506
    const-string/jumbo v5, "PhoneFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculatePreferredNetworkType: overriding for usernw mode phoneSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 507
    const-string/jumbo v7, " networkType = "

    .line 506
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    move v0, v4

    .line 512
    :cond_0
    if-eq v0, v2, :cond_1

    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 514
    const-string/jumbo v6, "preferred_network_mode"

    .line 513
    invoke-static {v5, v6, v1, v0}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 521
    .end local v4    # "userNwType":I
    :cond_1
    :goto_1
    const-string/jumbo v5, "PhoneFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 522
    const-string/jumbo v7, " networkType = "

    .line 521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return v0

    .line 491
    .end local v0    # "networkType":I
    :catch_0
    move-exception v3

    .line 492
    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v5, "PhoneFactory"

    const-string/jumbo v6, "Settings Exception Reading Valuefor phoneID"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0    # "networkType":I
    :cond_2
    const-string/jumbo v5, "PhoneFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "calculatePreferredNetworkType: phoneSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 519
    const-string/jumbo v7, " is not a active SubId"

    .line 518
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 666
    const-string/jumbo v8, "PhoneFactory:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/telephony/PhoneProxy;

    .line 668
    .local v7, "phones":[Lcom/android/internal/telephony/PhoneProxy;
    const/4 v1, -0x1

    .line 669
    .local v1, "i":I
    const/4 v8, 0x0

    array-length v10, v7

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v6, v7, v9

    .line 671
    .local v6, "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    add-int/lit8 v1, v1, 0x1

    .line 674
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 675
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5, p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 682
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    :try_start_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 689
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 690
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_2
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Telephony DebugService: Could not get Phone["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "] e="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 686
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :catch_1
    move-exception v0

    .line 687
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneProxy":Lcom/android/internal/telephony/PhoneProxy;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 700
    :goto_3
    :try_start_3
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 704
    :goto_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 705
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 712
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 713
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    :try_start_5
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-virtual {v8, p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 720
    :goto_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 722
    const-string/jumbo v8, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v9

    .line 724
    :try_start_6
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v8, "  "

    invoke-direct {v2, p1, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 725
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 726
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 727
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 728
    sget-object v8, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LocalLog;

    invoke-virtual {v8, p0, v2, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 729
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 723
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 695
    :catch_2
    move-exception v0

    .line 696
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 702
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 709
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 710
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 717
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 718
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 731
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v9

    .line 665
    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 367
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 368
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 369
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, p0

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 368
    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 371
    return-object v0

    .line 367
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getDataSubscription()J
    .locals 4

    .prologue
    .line 595
    const/4 v1, -0x1

    .line 598
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 599
    const-string/jumbo v3, "multi_sim_data_call"

    .line 598
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 604
    :goto_0
    int-to-long v2, v1

    return-wide v2

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 391
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 395
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 528
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p0, "phoneId"    # I

    .prologue
    .line 375
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 376
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 377
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, p0

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 376
    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 378
    return-object v0

    .line 375
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "phoneId"    # I

    .prologue
    .line 401
    const-string/jumbo v0, ""

    .line 403
    .local v0, "dbgInfo":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    :try_start_0
    sget-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v2, :cond_0

    .line 405
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Default phones haven\'t been made yet!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 407
    :cond_0
    const v2, 0x7fffffff

    if-ne p0, v2, :cond_1

    .line 409
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 425
    return-object v1

    .line 412
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneIdByPhoneId(I)I

    move-result p0

    .line 417
    :cond_2
    if-ltz p0, :cond_3

    .line 418
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge p0, v2, :cond_3

    .line 419
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v2, p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v1, 0x0

    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0
.end method

.method public static getPhones()[Lcom/android/internal/telephony/Phone;
    .locals 3

    .prologue
    .line 430
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v1

    .line 431
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 434
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 609
    const/4 v1, -0x1

    .line 611
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 612
    const-string/jumbo v3, "multi_sim_sms"

    .line 611
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 617
    :goto_0
    return v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSubscriptionInfoUpdater()Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .locals 1

    .prologue
    .line 736
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    return-object v0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 533
    const/4 v1, -0x1

    .line 536
    .local v1, "subId":I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 537
    const-string/jumbo v3, "multi_sim_voice_call"

    .line 536
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "PhoneFactory"

    const-string/jumbo v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getWorldPhone()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;
    .locals 2

    .prologue
    .line 854
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    if-nez v0, :cond_0

    .line 855
    const-string/jumbo v0, "PhoneFactory"

    const-string/jumbo v1, "sWorldPhone is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    return-object v0
.end method

.method private static instantiateCustomRIL(Ljava/lang/String;Landroid/content/Context;IILjava/lang/Integer;)Ljava/lang/Object;
    .locals 9
    .param p0, "sRILClassname"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.android.internal.telephony."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 386
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 387
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object p4, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static isEvdoDTSupport()Z
    .locals 2

    .prologue
    .line 862
    const-string/jumbo v0, "ril.evdo.dtsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x1

    return v0

    .line 865
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 550
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 551
    const-string/jumbo v4, "multi_sim_voice_prompt"

    .line 550
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 555
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 556
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static isSMSPromptEnabled()Z
    .locals 6

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 574
    .local v2, "value":I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 575
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 574
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 579
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 580
    :goto_1
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SMS Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v0

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "PhoneFactory"

    const-string/jumbo v4, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static localLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 657
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    monitor-enter v1

    .line 658
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 661
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLocalLogs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 656
    return-void
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-object v24, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v24

    .line 129
    :try_start_0
    sget-boolean v23, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v23, :cond_10

    .line 130
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->create()Lcom/android/internal/telephony/TelephonyDevController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    const/16 v19, 0x0

    .line 137
    .local v19, "retryCount":I
    :goto_0
    const/4 v10, 0x0

    .line 138
    .local v10, "hasException":Z
    add-int/lit8 v19, v19, 0x1

    .line 143
    :try_start_1
    new-instance v23, Landroid/net/LocalServerSocket;

    const-string/jumbo v25, "com.android.internal.telephony"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_1
    if-nez v10, :cond_4

    .line 160
    :try_start_2
    new-instance v23, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 163
    sget v18, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 164
    .local v18, "preferredNetworkMode":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v23

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 165
    const/16 v18, 0x7

    .line 167
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnGsmModeStatic()I

    move-result v23

    if-eqz v23, :cond_1

    .line 168
    const/16 v18, 0x9

    .line 171
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v5

    .line 172
    .local v5, "cdmaSubscription":I
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cdma Subscription set to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v14

    .line 178
    .local v14, "numPhones":I
    new-array v13, v14, [I

    .line 179
    .local v13, "networkModes":[I
    new-array v0, v14, [Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v23, v0

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 180
    new-array v0, v14, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v23, v0

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 196
    const-string/jumbo v23, "persist.radio.simswitch"

    const-string/jumbo v25, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 195
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 198
    .local v4, "capabilityPhoneId":I
    const-string/jumbo v23, "ro.telephony.ril_class"

    const-string/jumbo v25, "RIL"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 199
    .local v20, "sRILClassname":Ljava/lang/String;
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "RILClassname is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v14, :cond_8

    .line 219
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isEvdoDTSupport()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v23

    if-eqz v23, :cond_6

    .line 222
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 223
    const-string/jumbo v25, "preferred_network_mode"

    .line 222
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 221
    aput v23, v13, v11
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    :goto_3
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    .line 231
    const/16 v23, 0x1

    :try_start_4
    aput v23, v13, v11

    .line 233
    :cond_2
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "EVDO Network Mode set to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 234
    aget v26, v13, v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 233
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    :goto_4
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "RILJ Sub = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "capabilityPhoneId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 249
    const-string/jumbo v26, " Network Mode set to "

    .line 248
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 249
    aget v26, v13, v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 248
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 253
    :try_start_5
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 254
    aget v23, v13, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 253
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/PhoneFactory;->instantiateCustomRIL(Ljava/lang/String;Landroid/content/Context;IILjava/lang/Integer;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/CommandsInterface;

    aput-object v23, v25, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 201
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 144
    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v11    # "i":I
    .end local v13    # "networkModes":[I
    .end local v14    # "numPhones":I
    .end local v18    # "preferredNetworkMode":I
    .end local v20    # "sRILClassname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 145
    .local v9, "ex":Ljava/io/IOException;
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 150
    .end local v9    # "ex":Ljava/io/IOException;
    :cond_4
    const/16 v23, 0x3

    move/from16 v0, v19

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 151
    :try_start_6
    new-instance v23, Ljava/lang/RuntimeException;

    const-string/jumbo v25, "PhoneFactory probably already running"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 128
    .end local v10    # "hasException":Z
    .end local v19    # "retryCount":I
    :catchall_0
    move-exception v23

    monitor-exit v24

    throw v23

    .line 154
    .restart local v10    # "hasException":Z
    .restart local v19    # "retryCount":I
    :cond_5
    const-wide/16 v26, 0x7d0

    :try_start_7
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v8

    .local v8, "er":Ljava/lang/InterruptedException;
    goto/16 :goto_0

    .line 224
    .end local v8    # "er":Ljava/lang/InterruptedException;
    .restart local v4    # "capabilityPhoneId":I
    .restart local v5    # "cdmaSubscription":I
    .restart local v11    # "i":I
    .restart local v13    # "networkModes":[I
    .restart local v14    # "numPhones":I
    .restart local v18    # "preferredNetworkMode":I
    .restart local v20    # "sRILClassname":Ljava/lang/String;
    :catch_2
    move-exception v21

    .line 225
    .local v21, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_8
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "Settings Exception Reading Value At Index for Settings.Global.PREFERRED_NETWORK_MODE"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    aput v18, v13, v11

    goto/16 :goto_3

    .line 236
    .end local v21    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_7

    .line 237
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v23

    aput v23, v13, v11

    .line 242
    :goto_5
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 243
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/internal/telephony/PhoneFactory;->calculateNetworkType(Landroid/content/Context;I)I

    move-result v23

    aput v23, v13, v11

    goto/16 :goto_4

    .line 239
    :cond_7
    const/16 v23, 0x1

    aput v23, v13, v11

    goto :goto_5

    .line 261
    .local v7, "e":Ljava/lang/Exception;
    :goto_6
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "Unable to construct custom RIL class"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 262
    const-wide/16 v26, 0x2710

    :try_start_9
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v12

    .local v12, "ie":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 266
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "ie":Ljava/lang/InterruptedException;
    :cond_8
    :try_start_a
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "Creating SubscriptionController"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v23

    .line 268
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 267
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->initSubscriptionController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 272
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v23

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 282
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v14, v1}, Lcom/mediatek/internal/telephony/RadioManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v23

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->mRadioManager:Lcom/mediatek/internal/telephony/RadioManager;

    .line 284
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v14, v1}, Lcom/mediatek/internal/telephony/NetworkManager;->init(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)Lcom/mediatek/internal/telephony/NetworkManager;

    move-result-object v23

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->mNetworkManager:Lcom/mediatek/internal/telephony/NetworkManager;

    .line 287
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 288
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneFactory;->svlteInit(Landroid/content/Context;)V

    .line 305
    :cond_9
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 306
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ProxyController;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/PhoneProxy;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ProxyController;

    move-result-object v23

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->mProxyController:Lcom/android/internal/telephony/ProxyController;

    .line 311
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/16 v25, 0x0

    aget-object v23, v23, v25

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 312
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v25, 0x0

    aget-object v23, v23, v25

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 317
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 318
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v15, "NONE"

    .line 319
    .local v15, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 320
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 322
    :cond_a
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "defaultSmsApplication: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 327
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 329
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "Creating SubInfoRecordUpdater "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v23

    .line 331
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 330
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeSubscriptionInfoUpdater(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    move-result-object v23

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sSubInfoRecordUpdater:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .line 332
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v23

    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->updatePhonesAvailability([Lcom/android/internal/telephony/PhoneProxy;)V

    .line 334
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v23

    .line 335
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 334
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->initExtTelephonyClasses(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 339
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v14, :cond_f

    .line 340
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v23, v23, v11

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/PhoneProxy;->startMonitoringImsService()V

    .line 342
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v23

    .line 343
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v25, v25, v11

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()I

    move-result v25

    .line 342
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getUserNwMode(I)I

    move-result v22

    .line 344
    .local v22, "userNwType":I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 345
    aget v23, v13, v11

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 346
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v23, v23, v11

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 339
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 290
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v22    # "userNwType":I
    :cond_c
    const/4 v11, 0x0

    :goto_8
    if-ge v11, v14, :cond_9

    .line 291
    const/16 v16, 0x0

    .line 292
    .local v16, "phone":Lcom/android/internal/telephony/PhoneBase;
    aget v23, v13, v11

    invoke-static/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v17

    .line 293
    .local v17, "phoneType":I
    const/16 v23, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 294
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v23

    .line 295
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v25, v25, v11

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 294
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeGSMPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    .line 300
    .end local v16    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_d
    :goto_9
    const-string/jumbo v23, "PhoneFactory"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Creating Phone with type = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " sub = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v23, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makePhoneProxy(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v25

    aput-object v25, v23, v11

    .line 290
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 296
    .restart local v16    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_e
    const/16 v23, 0x2

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->getInstance()Lcom/android/internal/telephony/TelephonyPluginDelegate;

    move-result-object v23

    .line 298
    sget-object v25, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v25, v25, v11

    sget-object v26, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 297
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/internal/telephony/TelephonyPluginDelegate;->makeCDMALTEPhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v16

    .local v16, "phone":Lcom/android/internal/telephony/PhoneBase;
    goto :goto_9

    .line 352
    .end local v16    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v17    # "phoneType":I
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v15    # "packageName":Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldModeSupport()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 353
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "World mode support"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldMode;->init()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v4    # "capabilityPhoneId":I
    .end local v5    # "cdmaSubscription":I
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "hasException":Z
    .end local v11    # "i":I
    .end local v13    # "networkModes":[I
    .end local v14    # "numPhones":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "preferredNetworkMode":I
    .end local v19    # "retryCount":I
    .end local v20    # "sRILClassname":Ljava/lang/String;
    :cond_10
    :goto_a
    monitor-exit v24

    .line 127
    return-void

    .line 355
    .restart local v4    # "capabilityPhoneId":I
    .restart local v5    # "cdmaSubscription":I
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v10    # "hasException":Z
    .restart local v11    # "i":I
    .restart local v13    # "networkModes":[I
    .restart local v14    # "numPhones":I
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v18    # "preferredNetworkMode":I
    .restart local v19    # "retryCount":I
    .restart local v20    # "sRILClassname":Ljava/lang/String;
    :cond_11
    :try_start_b
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isWorldPhoneSupport()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 356
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "World phone support"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneWrapper;->getWorldPhoneInstance()Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    move-result-object v23

    sput-object v23, Lcom/android/internal/telephony/PhoneFactory;->sWorldPhone:Lcom/mediatek/internal/telephony/worldphone/IWorldPhone;

    goto :goto_a

    .line 359
    :cond_12
    const-string/jumbo v23, "PhoneFactory"

    const-string/jumbo v25, "World phone not support"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_a

    .line 255
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v15    # "packageName":Ljava/lang/String;
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto/16 :goto_6
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public static makeImsPhone(Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 1
    .param p0, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p1, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 625
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    return-object v0
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .param p0, "sipUri"    # Ljava/lang/String;

    .prologue
    .line 444
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultSubscription(I)V
    .locals 6
    .param p0, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 452
    const-string/jumbo v3, "persist.radio.default.sub"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 455
    .local v2, "phoneId":I
    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sLockProxyPhones:Ljava/lang/Object;

    monitor-enter v4

    .line 457
    if-ltz v2, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 458
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 459
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 460
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    .line 465
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "defaultMccMnc":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 470
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 473
    const-string/jumbo v3, "PhoneFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultSubscription : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 474
    const-string/jumbo v5, " Broadcasting Default Subscription Changed..."

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 451
    return-void

    .line 455
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 563
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 564
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 565
    const-string/jumbo v2, "multi_sim_voice_prompt"

    .line 564
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void

    .line 563
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static setSMSPromptEnabled(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .prologue
    .line 587
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 588
    .local v0, "value":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 589
    const-string/jumbo v2, "multi_sim_sms_prompt"

    .line 588
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    const-string/jumbo v1, "PhoneFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSMSPromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 587
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private static svlteInit(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    return-void
.end method
