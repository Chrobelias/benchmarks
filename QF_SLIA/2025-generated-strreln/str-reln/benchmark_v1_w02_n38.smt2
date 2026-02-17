(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.range "6" "9")))))

(assert (< (* (- 5) (str.len x)) 28))
(assert (= (* 5 (str.to_int x)) 20))

(check-sat)