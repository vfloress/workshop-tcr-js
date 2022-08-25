@echo off

call npm run test

if %ERRORLEVEL% GEQ 1 (
  echo ===================
  echo Oh no! Revert 😩
  call git checkout src
) ELSE (
  echo ===================
  echo 🙌 Let's commit! 😎
  call git add src test
  call git commit -m "Wip"
)
