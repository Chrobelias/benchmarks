(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "329") (re.* (re.range "7" "9")))))

(assert (= (+ (* 7 (str.len x)) (* (- 4) (str.to_int x))) 37))

(check-sat)