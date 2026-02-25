(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.+ (re.++ (re.range "0" "9") (str.to_re "46"))) (str.to_re "11"))))

(assert (<= (* (- 7) (str.to_int x)) 27))
(assert (<= (* (- 7) (str.to_int x)) 52))
(assert (> (* (- 10) (str.to_int x)) 5))
(assert (< (* (- 3) (str.len x)) 58))

(check-sat)