(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "405") (re.+ (str.to_re "147"))) (re.+ (re.range "5" "9")))))

(assert (< (+ (* (- 6) (str.len x)) (* 3 (str.to_int x))) 70))

(check-sat)