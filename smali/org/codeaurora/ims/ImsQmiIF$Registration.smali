.class public final Lorg/codeaurora/ims/ImsQmiIF$Registration;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Registration"
.end annotation


# static fields
.field public static final ERRORCODE_FIELD_NUMBER:I = 0x2

.field public static final ERRORMESSAGE_FIELD_NUMBER:I = 0x3

.field public static final NOT_REGISTERED:I = 0x2

.field public static final PASSOCIATEDURIS_FIELD_NUMBER:I = 0x5

.field public static final RADIOTECH_FIELD_NUMBER:I = 0x4

.field public static final REGISTERED:I = 0x1

.field public static final REGISTERING:I = 0x3

.field public static final STATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorCode_:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorCode:Z

.field private hasErrorMessage:Z

.field private hasPAssociatedUris:Z

.field private hasRadioTech:Z

.field private hasState:Z

.field private pAssociatedUris_:Ljava/lang/String;

.field private radioTech_:I

.field private state_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 3920
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3930
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3947
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3964
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3981
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    .line 3998
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    .line 4046
    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 3920
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4130
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4124
    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Registration;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 4013
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4014
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4015
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4016
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearRadioTech()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4017
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->clearPAssociatedUris()Lorg/codeaurora/ims/ImsQmiIF$Registration;

    .line 4018
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 4019
    return-object p0
.end method

.method public clearErrorCode()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3956
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    .line 3957
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3958
    return-object p0
.end method

.method public clearErrorMessage()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    .line 3974
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3975
    return-object p0
.end method

.method public clearPAssociatedUris()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 4007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris:Z

    .line 4008
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    .line 4009
    return-object p0
.end method

.method public clearRadioTech()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech:Z

    .line 3991
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    .line 3992
    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1

    .prologue
    .line 3939
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3940
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3941
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4049
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    if-gez v0, :cond_0

    .line 4051
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getSerializedSize()I

    .line 4053
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 3948
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3965
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssociatedUris()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3999
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTech()I
    .locals 1

    .prologue
    .line 3983
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4058
    const/4 v0, 0x0

    .line 4059
    .local v0, "size":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4061
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v1

    const/4 v2, 0x1

    .line 4060
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4063
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4065
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v1

    const/4 v2, 0x2

    .line 4064
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4067
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4069
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 4068
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4071
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4073
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getRadioTech()I

    move-result v1

    const/4 v2, 0x4

    .line 4072
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4075
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4077
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 4076
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4079
    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->cachedSize:I

    .line 4080
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 3932
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .prologue
    .line 3949
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 3966
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    return v0
.end method

.method public hasPAssociatedUris()Z
    .locals 1

    .prologue
    .line 4000
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris:Z

    return v0
.end method

.method public hasRadioTech()Z
    .locals 1

    .prologue
    .line 3982
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 3931
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4023
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
    .line 4084
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4088
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4089
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4093
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4094
    return-object p0

    .line 4091
    :sswitch_0
    return-object p0

    .line 4099
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 4103
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 4107
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 4111
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setRadioTech(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 4115
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->setPAssociatedUris(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;

    goto :goto_0

    .line 4089
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setErrorCode(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode:Z

    .line 3952
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorCode_:I

    .line 3953
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage:Z

    .line 3969
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->errorMessage_:Ljava/lang/String;

    .line 3970
    return-object p0
.end method

.method public setPAssociatedUris(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris:Z

    .line 4003
    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->pAssociatedUris_:Ljava/lang/String;

    .line 4004
    return-object p0
.end method

.method public setRadioTech(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech:Z

    .line 3986
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->radioTech_:I

    .line 3987
    return-object p0
.end method

.method public setState(I)Lorg/codeaurora/ims/ImsQmiIF$Registration;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState:Z

    .line 3935
    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Registration;->state_:I

    .line 3936
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
    .line 4029
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4030
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4032
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4033
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorCode()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    .line 4035
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4036
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4038
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasRadioTech()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4039
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getRadioTech()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4041
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->hasPAssociatedUris()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4042
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Registration;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4028
    :cond_4
    return-void
.end method
