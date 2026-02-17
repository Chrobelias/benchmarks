(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (re.range "3" "5")) (re.range "4" "7"))))

(assert (< (* (- 4) (str.len x)) 14))
(assert (< (* 4 (str.to_int x)) 96))

(check-sat)