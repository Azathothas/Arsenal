package fasttld

import (
	"fmt"
	"os"

	"github.com/spf13/cobra"
)

var version string = ""

var rootCmd = &cobra.Command{
	Use:     "fasttld",
	Version: version,
	Short:   `fasttld is a high performance effective top level domains (eTLD) extraction module.`,
	Long:    `fasttld is a high performance effective top level domains (eTLD) extraction module.`,
	Run:     func(cmd *cobra.Command, args []string) {},
}

// Execute runs the cobra.Command CLI
func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Fprintf(os.Stderr, "Whoops. There was an error while executing your CLI '%s'", err)
		os.Exit(1)
	}
}
