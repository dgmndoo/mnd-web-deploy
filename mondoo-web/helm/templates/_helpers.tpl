{{- define "mondoo-web.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "mondoo-web.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "mondoo-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}


{{- define "mondoo-web.selectorLabels" -}}
app.kubernetes.io/name: {{ include "mondoo-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }} 