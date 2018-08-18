.class public final Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgTag"
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final ID_FIELD_NUMBER:I = 0x3

.field public static final TOKEN_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private error_:I

.field private hasError:Z

.field private hasId:Z

.field private hasToken:Z

.field private hasType:Z

.field private id_:I

.field private token_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 455
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    .line 472
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    .line 489
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    .line 506
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    .line 554
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    .line 450
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearToken()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 522
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearType()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 523
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearId()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 524
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->clearError()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    .line 526
    return-object p0
.end method

.method public clearError()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    .line 516
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    .line 517
    return-object p0
.end method

.method public clearId()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    .line 499
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    .line 500
    return-object p0
.end method

.method public clearToken()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 464
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    .line 465
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    .line 466
    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    .line 482
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    .line 483
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    if-gez v0, :cond_0

    .line 559
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getSerializedSize()I

    .line 561
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v1

    const/4 v2, 0x1

    .line 568
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v1

    const/4 v2, 0x2

    .line 572
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 575
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v1

    const/4 v2, 0x3

    .line 576
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 579
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v1

    const/4 v2, 0x4

    .line 580
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 583
    :cond_3
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->cachedSize:I

    .line 584
    return v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    if-nez v0, :cond_0

    return v1

    .line 531
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    if-nez v0, :cond_1

    return v1

    .line 532
    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    if-nez v0, :cond_2

    return v1

    .line 533
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    if-nez v0, :cond_3

    return v1

    .line 534
    :cond_3
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
    .line 588
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 593
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 597
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    return-object p0

    .line 595
    :sswitch_0
    return-object p0

    .line 603
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 607
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 611
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 615
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;

    goto :goto_0

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setError(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 510
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError:Z

    .line 511
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->error_:I

    .line 512
    return-object p0
.end method

.method public setId(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId:Z

    .line 494
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->id_:I

    .line 495
    return-object p0
.end method

.method public setToken(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken:Z

    .line 460
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->token_:I

    .line 461
    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$MsgTag;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType:Z

    .line 477
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->type_:I

    .line 478
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
    .line 540
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getToken()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 543
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 546
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 549
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MsgTag;->getError()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 539
    :cond_3
    return-void
.end method
