.class public Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "LaunchTaskStartedEvent.java"


# instance fields
.field public final screenPinningRequested:Z

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    return-void
.end method
