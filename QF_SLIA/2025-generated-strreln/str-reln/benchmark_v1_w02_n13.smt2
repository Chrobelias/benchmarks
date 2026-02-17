(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.union (str.to_re "114") (re.* (re.range "3" "7")))))))

(assert (= (+ (* 5 (str.len x)) (* (- 6) (str.to_int x))) 75))

(check-sat)