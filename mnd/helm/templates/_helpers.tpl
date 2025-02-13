{{- define "mnd-web.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "mnd-web.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "mnd-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{- define "mnd-web.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mnd-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }} 