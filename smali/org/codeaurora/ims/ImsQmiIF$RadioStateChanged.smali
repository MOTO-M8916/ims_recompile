.class public final Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioStateChanged"
.end annotation


# static fields
.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4935
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4940
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    .line 4972
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    .line 4935
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5024
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5018
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1

    .prologue
    .line 4955
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->clearState()Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    .line 4956
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    .line 4957
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4949
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState:Z

    .line 4950
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    .line 4951
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4975
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    if-gez v0, :cond_0

    .line 4977
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getSerializedSize()I

    .line 4979
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4984
    const/4 v0, 0x0

    .line 4985
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4987
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 4986
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4989
    :cond_0
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->cachedSize:I

    .line 4990
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 4942
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 4941
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4961
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
    .line 4994
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4998
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4999
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5003
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5004
    return-object p0

    .line 5001
    :sswitch_0
    return-object p0

    .line 5009
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;

    goto :goto_0

    .line 4999
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState:Z

    .line 4945
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->state_:I

    .line 4946
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
    .line 4967
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4968
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$RadioStateChanged;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4966
    :cond_0
    return-void
.end method
