(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (re.* (re.* (str.to_re "706"))) (re.range "7" "9")))))

(assert (> (+ (* 10 (str.len x)) (* (- 3) (str.to_int x))) 22))

(check-sat)