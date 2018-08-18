.class public final Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SsacInfo"
.end annotation


# static fields
.field public static final BARRINGFACTORVIDEOSIB_FIELD_NUMBER:I = 0x7

.field public static final BARRINGFACTORVIDEO_FIELD_NUMBER:I = 0x3

.field public static final BARRINGFACTORVOICESIB_FIELD_NUMBER:I = 0x5

.field public static final BARRINGFACTORVOICE_FIELD_NUMBER:I = 0x1

.field public static final BARRINGTIMEVIDEOSIB_FIELD_NUMBER:I = 0x8

.field public static final BARRINGTIMEVIDEO_FIELD_NUMBER:I = 0x4

.field public static final BARRINGTIMEVOICESIB_FIELD_NUMBER:I = 0x6

.field public static final BARRINGTIMEVOICE_FIELD_NUMBER:I = 0x2


# instance fields
.field private barringFactorVideoSib_:I

.field private barringFactorVideo_:I

.field private barringFactorVoiceSib_:I

.field private barringFactorVoice_:I

.field private barringTimeVideoSib_:I

.field private barringTimeVideo_:I

.field private barringTimeVoiceSib_:I

.field private barringTimeVoice_:I

.field private cachedSize:I

.field private hasBarringFactorVideo:Z

.field private hasBarringFactorVideoSib:Z

.field private hasBarringFactorVoice:Z

.field private hasBarringFactorVoiceSib:Z

.field private hasBarringTimeVideo:Z

.field private hasBarringTimeVideoSib:Z

.field private hasBarringTimeVoice:Z

.field private hasBarringTimeVoiceSib:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9502
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9507
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    .line 9524
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    .line 9541
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    .line 9558
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    .line 9575
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    .line 9592
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    .line 9609
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    .line 9626
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    .line 9686
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    .line 9502
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9794
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 9788
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    .line 9641
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9642
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9643
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9644
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9645
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9646
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9647
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9648
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    .line 9649
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    .line 9650
    return-object p0
.end method

.method public clearBarringFactorVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9550
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    .line 9551
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    .line 9552
    return-object p0
.end method

.method public clearBarringFactorVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9618
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    .line 9619
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    .line 9620
    return-object p0
.end method

.method public clearBarringFactorVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9516
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    .line 9517
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    .line 9518
    return-object p0
.end method

.method public clearBarringFactorVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9584
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    .line 9585
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    .line 9586
    return-object p0
.end method

.method public clearBarringTimeVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9567
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    .line 9568
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    .line 9569
    return-object p0
.end method

.method public clearBarringTimeVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9635
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    .line 9636
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    .line 9637
    return-object p0
.end method

.method public clearBarringTimeVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9533
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    .line 9534
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    .line 9535
    return-object p0
.end method

.method public clearBarringTimeVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9601
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    .line 9602
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    .line 9603
    return-object p0
.end method

.method public getBarringFactorVideo()I
    .locals 1

    .prologue
    .line 9542
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    return v0
.end method

.method public getBarringFactorVideoSib()I
    .locals 1

    .prologue
    .line 9610
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    return v0
.end method

.method public getBarringFactorVoice()I
    .locals 1

    .prologue
    .line 9508
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    return v0
.end method

.method public getBarringFactorVoiceSib()I
    .locals 1

    .prologue
    .line 9576
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    return v0
.end method

.method public getBarringTimeVideo()I
    .locals 1

    .prologue
    .line 9559
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    return v0
.end method

.method public getBarringTimeVideoSib()I
    .locals 1

    .prologue
    .line 9627
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    return v0
.end method

.method public getBarringTimeVoice()I
    .locals 1

    .prologue
    .line 9525
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    return v0
.end method

.method public getBarringTimeVoiceSib()I
    .locals 1

    .prologue
    .line 9593
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 9689
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 9691
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getSerializedSize()I

    .line 9693
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9698
    const/4 v0, 0x0

    .line 9699
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9701
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v1

    const/4 v2, 0x1

    .line 9700
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 9703
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9705
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoice()I

    move-result v1

    const/4 v2, 0x2

    .line 9704
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9707
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9709
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideo()I

    move-result v1

    const/4 v2, 0x3

    .line 9708
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9711
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9713
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideo()I

    move-result v1

    const/4 v2, 0x4

    .line 9712
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9715
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9717
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoiceSib()I

    move-result v1

    const/4 v2, 0x5

    .line 9716
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9719
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9721
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoiceSib()I

    move-result v1

    const/4 v2, 0x6

    .line 9720
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9723
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 9725
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideoSib()I

    move-result v1

    const/4 v2, 0x7

    .line 9724
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9727
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9729
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideoSib()I

    move-result v1

    const/16 v2, 0x8

    .line 9728
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9731
    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    .line 9732
    return v0
.end method

.method public hasBarringFactorVideo()Z
    .locals 1

    .prologue
    .line 9543
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    return v0
.end method

.method public hasBarringFactorVideoSib()Z
    .locals 1

    .prologue
    .line 9611
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    return v0
.end method

.method public hasBarringFactorVoice()Z
    .locals 1

    .prologue
    .line 9509
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    return v0
.end method

.method public hasBarringFactorVoiceSib()Z
    .locals 1

    .prologue
    .line 9577
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    return v0
.end method

.method public hasBarringTimeVideo()Z
    .locals 1

    .prologue
    .line 9560
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    return v0
.end method

.method public hasBarringTimeVideoSib()Z
    .locals 1

    .prologue
    .line 9628
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    return v0
.end method

.method public hasBarringTimeVoice()Z
    .locals 1

    .prologue
    .line 9526
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    return v0
.end method

.method public hasBarringTimeVoiceSib()Z
    .locals 1

    .prologue
    .line 9594
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 9654
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9736
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9740
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 9741
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9745
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9746
    return-object p0

    .line 9743
    :sswitch_0
    return-object p0

    .line 9751
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9755
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9759
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9763
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9767
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9771
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9775
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9779
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    .line 9741
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
    .end sparse-switch
.end method

.method public setBarringFactorVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    .line 9546
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    .line 9547
    return-object p0
.end method

.method public setBarringFactorVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    .line 9614
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    .line 9615
    return-object p0
.end method

.method public setBarringFactorVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    .line 9512
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    .line 9513
    return-object p0
.end method

.method public setBarringFactorVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    .line 9580
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    .line 9581
    return-object p0
.end method

.method public setBarringTimeVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    .line 9563
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    .line 9564
    return-object p0
.end method

.method public setBarringTimeVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    .line 9631
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    .line 9632
    return-object p0
.end method

.method public setBarringTimeVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    .line 9529
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    .line 9530
    return-object p0
.end method

.method public setBarringTimeVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    .line 9597
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    .line 9598
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9660
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9661
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9663
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9664
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoice()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9666
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9667
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideo()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9669
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9670
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideo()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9672
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9673
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoiceSib()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9675
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9676
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoiceSib()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9678
    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9679
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideoSib()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9681
    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9682
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideoSib()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 9659
    :cond_7
    return-void
.end method
