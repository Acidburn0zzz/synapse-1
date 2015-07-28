// +build go1.4,!go1.5

#define NOSPLIT 4

TEXT ·Wait(SB),NOSPLIT,$0-0
	B runtime·asyncsemacquire(SB)

TEXT ·Wake(SB),NOSPLIT,$0-0
	B runtime·semrelease(SB)
