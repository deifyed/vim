	testCases := []struct {
		name string
	}{
		{
			name: "Should work",
		},
	}

	for _, tc := range testCases {
		tc := tc

		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
		})
	}
