%hook SBLockScreenView

-(void)setCustomSlideToUnlockText:(id)input {

NSDate *today = [[NSDate alloc] init];
NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
formatter.dateFormat = @"EEEE، d MMM yyyy";
formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"fa_IR"];
NSString *dateString = [formatter stringFromDate:today];

%orig(dateString);

}

%end