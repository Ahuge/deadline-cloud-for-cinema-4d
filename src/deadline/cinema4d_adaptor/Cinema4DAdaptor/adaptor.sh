C4DEXE="$1"
echo "C4D Executable: ${C4DEXE}"
echo "$@"
shift
ARGS="$@"
echo "  Passed argument list: ${ARGS}"


C4DBASE=$(dirname "${C4DEXE}"
echo "Sourcing setup_c4d_env from ${C4DBASE}/setup_c4d_env"
source "${C4DBASE}/setup_c4d_env"

echo "Executing C4D Executable with argument list after sourcing environment"
$C4DEXE "$ARGS"
