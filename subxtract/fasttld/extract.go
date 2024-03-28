package fasttld

import (
	"log"

	"github.com/elliotwutingfeng/go-fasttld"
	"github.com/fatih/color"
	"github.com/spf13/cobra"
)

var includePrivateSuffix, ignoreSubDomains, toPunyCode bool

var extractCmd = &cobra.Command{
	Use:     "extract",
	Aliases: []string{"ext"},
	Short:   "Extracts subcomponents from a URL.",
	Long: `Extracts subcomponents from a URL.

For Example
---
fasttld extract abc.example.com:5000/a/path
---
	`,
	Args: cobra.ExactArgs(1),
	Run: func(cmd *cobra.Command, args []string) {
		extractor, err := fasttld.New(fasttld.SuffixListParams{IncludePrivateSuffix: includePrivateSuffix})
		if err != nil {
			log.Fatal(err)
		}
		res, err := extractor.Extract(fasttld.URLParams{URL: args[0], IgnoreSubDomains: ignoreSubDomains, ConvertURLToPunyCode: toPunyCode})
		if err != nil {
			color.New(color.FgHiRed, color.Bold).Print("Error: ")
			color.New(color.FgHiWhite).Println(err)
		}
		fasttld.PrintRes(args[0], res)
	},
}

func init() {
	extractCmd.Flags().BoolVarP(&includePrivateSuffix, "private-suffix", "p", false, "Include private suffix")
	extractCmd.Flags().BoolVarP(&ignoreSubDomains, "ignore-subdomains", "i", false, "Ignore subdomains")
	extractCmd.Flags().BoolVarP(&toPunyCode, "to-punycode", "t", false, "Convert to punycode")
	rootCmd.AddCommand(extractCmd)
}
