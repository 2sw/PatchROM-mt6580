.class public Lcom/android/internal/telephony/DriverCall;
.super Ljava/lang/Object;
.source "DriverCall.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DriverCall$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/DriverCall;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DriverCall"


# instance fields
.field public TOA:I

.field public als:I

.field public callMode:I

.field public index:I

.field public isMT:Z

.field public isMpty:Z

.field public isVideo:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public pau:Ljava/lang/String;

.field public state:Lcom/android/internal/telephony/DriverCall$State;

.field public uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromCLCCLine(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall;
    .locals 8
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v2, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v2}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 70
    .local v2, "ret":Lcom/android/internal/telephony/DriverCall;
    new-instance v1, Lcom/android/internal/telephony/ATResponseParser;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATResponseParser;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "p":Lcom/android/internal/telephony/ATResponseParser;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 74
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v5

    iput-boolean v5, v2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 75
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 77
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    :goto_0
    iput-boolean v5, v2, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 80
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v5

    const/16 v6, 0xa

    if-ne v6, v5, :cond_3

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    .line 82
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 85
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 87
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->hasMore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 92
    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 96
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/ATResponseParser;->nextInt()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 102
    iget-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 101
    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/internal/telephony/ATParseEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    return-object v2

    :cond_2
    move v5, v4

    .line 77
    goto :goto_0

    :cond_3
    move v3, v4

    .line 80
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Lcom/android/internal/telephony/ATParseEx;
    const-string/jumbo v3, "DriverCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid CLCC line: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v7
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .param p0, "cli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 159
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 155
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 156
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 157
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;
    .locals 3
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/ATParseEx;
        }
    .end annotation

    .prologue
    .line 138
    packed-switch p0, :pswitch_data_0

    .line 146
    new-instance v0, Lcom/android/internal/telephony/ATParseEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal call state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/ATParseEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 140
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 141
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 142
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 143
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 144
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    return-object v0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/DriverCall;)I
    .locals 2
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ge v0, v1, :cond_0

    .line 171
    const/4 v0, -0x1

    return v0

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    iget v1, p1, Lcom/android/internal/telephony/DriverCall;->index:I

    if-ne v0, v1, :cond_1

    .line 173
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "dc"    # Ljava/lang/Object;

    .prologue
    .line 168
    check-cast p1, Lcom/android/internal/telephony/DriverCall;

    .end local p1    # "dc":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DriverCall;->compareTo(Lcom/android/internal/telephony/DriverCall;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "toa="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "conf"

    .line 120
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mt"

    .line 120
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "voc"

    .line 120
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vid"

    .line 120
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "evp"

    .line 120
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, ",cli="

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, ","

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    iget v1, p0, Lcom/android/internal/telephony/DriverCall;->callMode:I

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    const-string/jumbo v0, "norm"

    goto/16 :goto_0

    .line 124
    :cond_1
    const-string/jumbo v0, "mo"

    goto/16 :goto_1

    .line 126
    :cond_2
    const-string/jumbo v0, "nonvoc"

    goto :goto_2

    .line 128
    :cond_3
    const-string/jumbo v0, "nonvid"

    goto :goto_3

    .line 130
    :cond_4
    const-string/jumbo v0, "noevp"

    goto :goto_4
.end method
