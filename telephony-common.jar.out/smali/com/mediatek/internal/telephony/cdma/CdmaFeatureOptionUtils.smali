.class public Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;
.super Ljava/lang/Object;
.source "CdmaFeatureOptionUtils.java"


# static fields
.field public static final EVDO_DT_SUPPORT:Ljava/lang/String; = "ril.evdo.dtsupport"

.field public static final MTK_C2KWP_P2_SUPPORT:Ljava/lang/String; = "ro.mtk.c2k.slot2.support"

.field public static final MTK_C2KWP_SIMSWITCH_SUPPORT:Ljava/lang/String; = "ro.mtk.c2kwp.simswitch.support"

.field public static final MTK_C2K_OM_NW_SEL_TYPE:Ljava/lang/String; = "ro.mtk_c2k_om_nw_sel_type"

.field public static final MTK_C2K_SUPPORT:Ljava/lang/String; = "ro.mtk_c2k_support"

.field public static final MTK_CT6M_SUPPORT:Ljava/lang/String; = "ro.ct6m_support"

.field private static final MTK_CT_LTE_TDD_TEST:Ljava/lang/String; = "persist.sys.forcttddtest"

.field public static final MTK_FLIGHT_MODE_POWER_OFF_MODEM_SUPPORT:Ljava/lang/String; = "ro.mtk_flight_mode_power_off_md"

.field public static final MTK_IRAT_SUPPORT:Ljava/lang/String; = "ro.c2k.irat.support"

.field public static final MTK_SRLTE_SUPPORT:Ljava/lang/String; = "ro.mtk_srlte_support"

.field public static final MTK_SVLTE_SUPPORT:Ljava/lang/String; = "ro.mtk_svlte_support"

.field public static final SUPPORT_YES:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getC2KOMNetworkSelectionType()I
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "ro.mtk_c2k_om_nw_sel_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getExternalModemSlot()I
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "ril.external.md"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static isC2KWorldPhoneP2Support()Z
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "ro.mtk.c2k.slot2.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isC2KWpSimSwitchSupport()Z
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "ro.mtk.c2kwp.simswitch.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCT6MSupport()Z
    .locals 3

    .prologue
    .line 156
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ro.ct6m_support"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTLteTddTestSupport()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public static isCdmaIratSupport()Z
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "ro.c2k.irat.support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCdmaLteDcSupport()Z
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const-string/jumbo v0, "ro.mtk_srlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isEvdoDTSupport()Z
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "ril.evdo.dtsupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFlightModePowerOffModemSupport()Z
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "ro.mtk_flight_mode_power_off_md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "1"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMtkC2KSupport()Z
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSrlteSupport()Z
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "ro.mtk_srlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSvlteSupport()Z
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "ro.mtk_svlte_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
