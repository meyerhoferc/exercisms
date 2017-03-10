class Clock:
    def __init__(self, hour, minute):
        self.hour = hour
        self.minute = minute
        self.correct_hours()
        self.correct_minutes()

    def __str__(self):
        return "%02d:%02d" % (self.hour, self.minute)

    def __eq__(self, other):
        return self.hour == other.hour and self.minute == other.minute

    def correct_hours(self):
        self.hour = self.hour % 24

    def correct_minutes(self):
        self.hour += (self.minute/60)
        self.hour = self.hour % 24
        self.minute = self.minute % 60

    def add(self, minutes):
        self.minute += minutes
        self.correct_hours()
        self.correct_minutes()
        return self
