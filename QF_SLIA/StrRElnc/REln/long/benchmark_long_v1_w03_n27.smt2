(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.range "1" "7"))))

(assert (> (+ (* (- 8) (str.len x)) (* 2 (str.to_int x))) 87))
(assert (< (* 2 (str.to_int x)) 68))

(check-sat)