(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ "67" a x y)))

(assert (str.in_re x (re.union (re.+ (re.range "7" "9")) (re.union (str.to_re "20") (re.* (str.to_re "2"))))))
(assert (str.in_re z (re.* (re.union (re.range "4" "7") (re.+ (re.* (str.to_re "53")))))))
(assert (str.in_re y (re.+ (re.++ (re.* (re.range "4" "6")) (re.* (str.to_re "40"))))))
(assert (str.in_re a (re.union (re.+ (str.to_re "8")) (re.* (re.range "4" "6")))))

(assert (= (+ (* (- 7) (str.len y)) (* (- 6) (str.len z)) (* (- 5) (str.len a)) (* (- 5) (str.to_int x)) (* 7 (str.to_int z))) 20))

(check-sat)