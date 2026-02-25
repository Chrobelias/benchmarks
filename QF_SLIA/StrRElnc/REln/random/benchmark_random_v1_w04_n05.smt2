(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.* (re.* (re.range "0" "6")))))))

(assert (= (+ (* (- 6) (str.len x)) (* 3 (str.to_int x))) 68))
(assert (< (* (- 6) (str.len x)) 3))
(assert (> (* 3 (str.len x)) 80))

(check-sat)