(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "75") (re.* (re.range "3" "8")))))

(assert (> (+ (str.len x) (* 6 (str.to_int x))) 96))
(assert (> (+ (* 3 (str.len x)) (* (- 9) (str.to_int x))) 27))

(check-sat)