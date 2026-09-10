# GIMPS World Record Hunt

GitHub Actions workflow for searching Mersenne primes using GIMPS (Great Internet Mersenne Prime Search).

## User ID
DeltaKronecker

## How It Works
- 10 parallel jobs test different exponents above current record (136M)
- Each job runs mprime v30.19b20 for ~6 hours
- State is cached between runs to preserve progress
- PRP testing with proofs (no LL testing)

## Exponents Being Tested
- 140000001, 140000003, 140000007
- 140000013, 140000021, 140000027
- 140000037, 140000039, 140000041, 140000057

## Schedule
- Runs every 6 hours automatically
- Can also trigger manually via GitHub Actions

## Manual Trigger
Go to Actions > GIMPS World Record Hunt > Run workflow

## Notes
- GitHub Actions free tier: 2,000 min/month
- 10 jobs x 6hr = 60hr per cycle (4 cycles/day)
- Budget: ~720 min/month if run continuously

