.class Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;
.super Ljava/lang/Object;
.source "MediaTekRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MediaTekRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "dtmfQueueHandler"
.end annotation


# instance fields
.field private final DTMF_STATUS_START:Z

.field private final DTMF_STATUS_STOP:Z

.field public final MAXIMUM_DTMF_REQUEST:I

.field private mDtmfQueue:Ljava/util/Vector;

.field private mDtmfStatus:Z

.field private mIsSendChldRequest:Z

.field private mPendingCHLDRequest:Lcom/android/internal/telephony/RILRequest;

.field final synthetic this$0:Lcom/android/internal/telephony/MediaTekRIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/MediaTekRIL;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/MediaTekRIL;

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x0

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v2, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->MAXIMUM_DTMF_REQUEST:I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->DTMF_STATUS_START:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->DTMF_STATUS_STOP:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfStatus:Z

    .line 168
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/android/internal/telephony/RILRequest;

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 107
    iput-boolean v1, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfStatus:Z

    .line 106
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/telephony/RILRequest;)V
    .locals 1
    .param p1, "o"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public get()Lcom/android/internal/telephony/RILRequest;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    return-object v0
.end method

.method public getPendingRequest()Lcom/android/internal/telephony/RILRequest;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/android/internal/telephony/RILRequest;

    return-object v0
.end method

.method public hasSendChldRequest()Z
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->this$0:Lcom/android/internal/telephony/MediaTekRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsSendChldRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mIsSendChldRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/MediaTekRIL;->riljLog(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mIsSendChldRequest:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfStatus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 130
    return-void
.end method

.method public remove(Lcom/android/internal/telephony/RILRequest;)V
    .locals 1
    .param p1, "o"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public resetSendChldRequest()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 154
    return-void
.end method

.method public setPendingRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .param p1, "r"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mPendingCHLDRequest:Lcom/android/internal/telephony/RILRequest;

    .line 142
    return-void
.end method

.method public setSendChldRequest()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mIsSendChldRequest:Z

    .line 150
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfStatus:Z

    .line 110
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MediaTekRIL$dtmfQueueHandler;->mDtmfStatus:Z

    .line 114
    return-void
.end method
