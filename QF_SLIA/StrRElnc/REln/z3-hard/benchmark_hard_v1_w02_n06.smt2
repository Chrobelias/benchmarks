(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "73"))))

(assert (= (* 8 (str.to_int x)) 96))
(assert (< (* (- 2) (str.len x)) 37))

(check-sat)