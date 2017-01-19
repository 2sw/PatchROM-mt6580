.class public Lcom/android/internal/telephony/uicc/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    }
.end annotation


# static fields
.field private static CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final OEM_SPN_OVERRIDE_PATH:Ljava/lang/String; = "telephony/spn-conf.xml"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_GID1_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efgid1.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_PNN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efpnn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efspn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_IMSI_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-imsi.xml"

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;


# instance fields
.field private CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

.field private mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstSync:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadSpnOverrides()V

    .line 61
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByEfSpn()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByImsi()V

    .line 73
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    .line 75
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByEfPnn()V

    .line 79
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    .line 81
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByEfGid1()V

    .line 54
    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;
    .locals 2

    .prologue
    .line 187
    sget-object v1, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 192
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;

    return-object v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 328
    .local v3, "len":I
    const/4 v2, 0x0

    .line 330
    .local v2, "idxCompare":I
    const-string/jumbo v4, "SpnOverride"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mvno match imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "pattern = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-gtz v3, :cond_0

    return v7

    .line 332
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    return v7

    .line 334
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 335
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 336
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-ne v0, v4, :cond_3

    .line 334
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2

    .line 339
    return v7

    .line 342
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private loadSpnOverrides()V
    .locals 19

    .prologue
    .line 97
    new-instance v12, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v16

    .line 98
    const-string/jumbo v17, "etc/spn-conf.xml"

    .line 97
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v12, "spnFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v16

    .line 100
    const-string/jumbo v17, "telephony/spn-conf.xml"

    .line 99
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    .local v8, "oemSpnFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 104
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 105
    .local v10, "oemSpnTime":J
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 106
    .local v14, "sysSpnTime":J
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SPN Timestamp: oemTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " sysTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    cmp-long v16, v10, v14

    if-lez v16, :cond_0

    .line 110
    const-string/jumbo v16, "SpnOverride"

    const-string/jumbo v17, "SPN in OEM image is newer than System image"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    move-object v12, v8

    .line 120
    .end local v10    # "oemSpnTime":J
    .end local v14    # "sysSpnTime":J
    :cond_0
    :goto_0
    :try_start_0
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .local v13, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 128
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 130
    const-string/jumbo v16, "spnOverrides"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 133
    :goto_1
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 135
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v16, "spnOverride"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 145
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_2
    return-void

    .line 115
    .end local v13    # "spnReader":Ljava/io/FileReader;
    :cond_1
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No SPN in OEM image = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 116
    const-string/jumbo v18, " Load SPN from system image"

    .line 115
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Can not open "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 140
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :cond_2
    :try_start_2
    const-string/jumbo v16, "numeric"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "numeric":Ljava/lang/String;
    const-string/jumbo v16, "spn"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 146
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    .line 147
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in spn-conf parser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 148
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 149
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in spn-conf parser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private static loadVirtualSpnOverridesByEfGid1()V
    .locals 12

    .prologue
    .line 393
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByEfGid1"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-efgid1.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 397
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 406
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 408
    const-string/jumbo v9, "virtualSpnOverridesByEfGid1"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 411
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 413
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 414
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 423
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 391
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 398
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 400
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 399
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 400
    const-string/jumbo v11, "/"

    .line 399
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 400
    const-string/jumbo v11, "etc/virtual-spn-conf-by-efgid1.xml"

    .line 399
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void

    .line 418
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "mccmncgid1"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "mccmncgid1":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test mccmncgid1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object v9, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 424
    .end local v3    # "mccmncgid1":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 425
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efgid1 parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 426
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 427
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efgid1 parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static loadVirtualSpnOverridesByEfPnn()V
    .locals 12

    .prologue
    .line 346
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByEfPnn"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-efpnn.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 359
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 361
    const-string/jumbo v9, "virtualSpnOverridesByEfPnn"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 364
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 366
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 376
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 344
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 351
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 353
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 352
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 353
    const-string/jumbo v11, "/"

    .line 352
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 353
    const-string/jumbo v11, "etc/virtual-spn-conf-by-efpnn.xml"

    .line 352
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 371
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "mccmncpnn"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "mccmncpnn":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test mccmncpnn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v9, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 377
    .end local v3    # "mccmncpnn":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 378
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efpnn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 379
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efpnn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static loadVirtualSpnOverridesByEfSpn()V
    .locals 12

    .prologue
    .line 200
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByEfSpn"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-efspn.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 213
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 215
    const-string/jumbo v9, "virtualSpnOverridesByEfSpn"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 218
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 220
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 230
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 205
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 207
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 207
    const-string/jumbo v11, "/"

    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 207
    const-string/jumbo v11, "etc/virtual-spn-conf-by-efspn.xml"

    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void

    .line 225
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "mccmncspn"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "mccmncspn":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test mccmncspn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v9, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 231
    .end local v3    # "mccmncspn":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efspn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 233
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 234
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efspn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private loadVirtualSpnOverridesByImsi()V
    .locals 12

    .prologue
    .line 247
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByImsi"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-imsi.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 260
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 262
    const-string/jumbo v9, "virtualSpnOverridesByImsi"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 265
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 277
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 245
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 252
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 254
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 253
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 254
    const-string/jumbo v11, "/"

    .line 253
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 254
    const-string/jumbo v11, "etc/virtual-spn-conf-by-imsi.xml"

    .line 253
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 272
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "imsipattern"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "imsipattern":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test imsipattern = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;

    invoke-direct {v10, p0, v3, v6}, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;-><init>(Lcom/android/internal/telephony/uicc/SpnOverride;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 278
    .end local v3    # "imsipattern":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 279
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-imsi parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 280
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-imsi parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsCarrierEx(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "gid1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 432
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 433
    :cond_0
    return-object v1

    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "pnn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 385
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 386
    :cond_0
    return-object v1

    .line 385
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 239
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    return-object v1

    .line 239
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 286
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 287
    :cond_0
    return-object v5

    .line 286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;

    .line 292
    .local v1, "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    const-string/jumbo v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSpnByImsi(): mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    const-string/jumbo v4, ", pattern = "

    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    .line 292
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    return-object v2

    .line 290
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    :cond_3
    return-object v5
.end method

.method public getSpnEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 568
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 303
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 304
    :cond_0
    return-object v5

    .line 303
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;

    .line 310
    .local v1, "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    const-string/jumbo v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOperatorMvnoForImsi(): mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    const-string/jumbo v4, ", imsi = "

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    const-string/jumbo v4, ", pattern = "

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    return-object v2

    .line 308
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    :cond_3
    return-object v5
.end method

.method public lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 439
    move-object v3, p2

    .line 440
    .local v3, "operName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 454
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 458
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 460
    .local v2, "mvnoOperName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 461
    const-string/jumbo v5, "SpnOverride"

    const-string/jumbo v6, "lookupOperatorName getPhone null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-object v3

    .line 472
    :cond_0
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v5}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, "mvnoOperName":Ljava/lang/String;
    const-string/jumbo v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the result of searching mvnoOperName by IMSI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    if-eqz v2, :cond_1

    .line 488
    move-object v3, v2

    .line 490
    :cond_1
    const/4 v1, 0x0

    .line 491
    .local v1, "getFromResource":Z
    const/4 v0, 0x0

    .line 492
    .local v0, "ctName":Ljava/lang/String;
    const-string/jumbo v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ctName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-nez v2, :cond_4

    if-eqz p3, :cond_4

    .line 521
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 522
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 554
    :cond_2
    :goto_0
    return-object v3

    .line 524
    :cond_3
    const-string/jumbo v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find long operator name for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 528
    :cond_4
    if-nez v2, :cond_2

    if-nez p3, :cond_2

    .line 550
    const-string/jumbo v5, "SpnOverride"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find short operator name for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 559
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/SpnOverride;->lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
