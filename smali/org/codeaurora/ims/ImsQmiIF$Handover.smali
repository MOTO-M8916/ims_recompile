.class public final Lorg/codeaurora/ims/ImsQmiIF$Handover;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Handover"
.end annotation


# static fields
.field public static final ERRORCODE_FIELD_NUMBER:I = 0x5

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x6

.field public static final HOEXTRA_FIELD_NUMBER:I = 0x4

.field public static final SRCTECH_FIELD_NUMBER:I = 0x2

.field public static final TARGETTECH_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorCode_:Ljava/lang/String;

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasHoExtra:Z

.field private hasSrcTech:Z

.field private hasTargetTech:Z

.field private hasType:Z

.field private hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

.field private srcTech_:I

.field private targetTech_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 4562
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4567
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4584
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4601
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4618
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4638
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4655
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4707
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4562
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4801
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4795
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Handover;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4670
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4671
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4672
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4673
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4674
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4675
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Handover;

    .line 4676
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4677
    return-object p0
.end method

.method public clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    .line 4648
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4649
    return-object p0
.end method

.method public clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    .line 4665
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4666
    return-object p0
.end method

.method public clearHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4631
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4632
    return-object p0
.end method

.method public clearSrcTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4594
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4595
    return-object p0
.end method

.method public clearTargetTech()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    .line 4610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4611
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4612
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4576
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4577
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4578
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4710
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    if-gez v0, :cond_0

    .line 4712
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSerializedSize()I

    .line 4714
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4639
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4656
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;
    .locals 1

    .prologue
    .line 4620
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4719
    const/4 v0, 0x0

    .line 4720
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4722
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 4721
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4724
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4726
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v1

    const/4 v2, 0x2

    .line 4725
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4728
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4730
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v1

    const/4 v2, 0x3

    .line 4729
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4732
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4734
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v1

    const/4 v2, 0x4

    .line 4733
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4736
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4738
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 4737
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4740
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4742
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 4741
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4744
    :cond_5
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->cachedSize:I

    .line 4745
    return v0
.end method

.method public getSrcTech()I
    .locals 1

    .prologue
    .line 4586
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    return v0
.end method

.method public getTargetTech()I
    .locals 1

    .prologue
    .line 4603
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 4569
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 4640
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 4657
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    return v0
.end method

.method public hasHoExtra()Z
    .locals 1

    .prologue
    .line 4619
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    return v0
.end method

.method public hasSrcTech()Z
    .locals 1

    .prologue
    .line 4585
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    return v0
.end method

.method public hasTargetTech()Z
    .locals 1

    .prologue
    .line 4602
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 4568
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4681
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
    .line 4749
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4753
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4754
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4758
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4759
    return-object p0

    .line 4756
    :sswitch_0
    return-object p0

    .line 4764
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4768
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4772
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4776
    :sswitch_4
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$Extra;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$Extra;-><init>()V

    .line 4777
    .local v1, "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 4778
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4782
    .end local v1    # "value":Lorg/codeaurora/ims/ImsQmiIF$Extra;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setErrorCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4786
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;

    goto :goto_0

    .line 4754
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public setErrorCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode:Z

    .line 4643
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorCode_:Ljava/lang/String;

    .line 4644
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage:Z

    .line 4660
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->errorMessage_:Ljava/lang/String;

    .line 4661
    return-object p0
.end method

.method public setHoExtra(Lorg/codeaurora/ims/ImsQmiIF$Extra;)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .prologue
    .line 4622
    if-nez p1, :cond_0

    .line 4623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4625
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra:Z

    .line 4626
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hoExtra_:Lorg/codeaurora/ims/ImsQmiIF$Extra;

    .line 4627
    return-object p0
.end method

.method public setSrcTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech:Z

    .line 4589
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->srcTech_:I

    .line 4590
    return-object p0
.end method

.method public setTargetTech(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech:Z

    .line 4606
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->targetTech_:I

    .line 4607
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Handover;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType:Z

    .line 4572
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Handover;->type_:I

    .line 4573
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
    .line 4687
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4688
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4690
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasSrcTech()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4691
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getSrcTech()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4693
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasTargetTech()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4694
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getTargetTech()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4696
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasHoExtra()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4697
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getHoExtra()Lorg/codeaurora/ims/ImsQmiIF$Extra;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 4699
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4700
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4702
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4703
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Handover;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4686
    :cond_5
    return-void
.end method
