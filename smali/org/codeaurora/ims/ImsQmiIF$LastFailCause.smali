.class public final Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastFailCause"
.end annotation


# static fields
.field public static final CAUSE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private cause_:I

.field private hasCause:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4339
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4344
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cause_:I

    .line 4376
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cachedSize:I

    .line 4339
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4428
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4422
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
    .locals 1

    .prologue
    .line 4359
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->clearCause()Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    .line 4360
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cachedSize:I

    .line 4361
    return-object p0
.end method

.method public clearCause()Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
    .locals 1

    .prologue
    .line 4353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->hasCause:Z

    .line 4354
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cause_:I

    .line 4355
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4379
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cachedSize:I

    if-gez v0, :cond_0

    .line 4381
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->getSerializedSize()I

    .line 4383
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cachedSize:I

    return v0
.end method

.method public getCause()I
    .locals 1

    .prologue
    .line 4346
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4388
    const/4 v0, 0x0

    .line 4389
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->hasCause()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4391
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->getCause()I

    move-result v1

    const/4 v2, 0x1

    .line 4390
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4393
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cachedSize:I

    .line 4394
    return v0
.end method

.method public hasCause()Z
    .locals 1

    .prologue
    .line 4345
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->hasCause:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4365
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
    .line 4398
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4402
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4403
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4407
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4408
    return-object p0

    .line 4405
    :sswitch_0
    return-object p0

    .line 4413
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->setCause(I)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;

    goto :goto_0

    .line 4403
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCause(I)Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->hasCause:Z

    .line 4349
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->cause_:I

    .line 4350
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
    .line 4371
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->hasCause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4372
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$LastFailCause;->getCause()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4370
    :cond_0
    return-void
.end method
